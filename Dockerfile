FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -yq gpg curl \
 && apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub \
 && curl -LO http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb \
 && dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb \
 && rm -f cuda-repo-ubuntu1804_10.0.130-1_amd64.deb \
 && apt-get update \
 && apt-get install -yq cuda-libraries-dev-10-0
