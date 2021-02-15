FROM python:stretch


COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest
RUN pip install botocore==1.17.63



ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


