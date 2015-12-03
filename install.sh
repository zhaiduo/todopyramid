#!/bin/bash

virtualenv venv --python=python2.7
. venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt -e .

#source venv/bin/activate
initialize_todopyramid_db development.ini
pserve development.ini

# http://localhost:6543 and enjoy!
