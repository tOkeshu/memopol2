#!/bin/sh

set -e

source ./env
export COUCH_HOST
export COUCH_PORT


for i in $XML_DUMPS_PATH/*xml.json; do

  coll=$(basename $i | cut -d'.' -f1)
  ./couchdb-import.py $i $coll

done


