FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y build-essential
RUN conda create -n scenic python=3.6.7
RUN echo "source activate scenic" > ~/.bashrc
ENV PATH /opt/conda/envs/scenic/bin:$PATH
RUN pip install --no-cache-dir --upgrade pyscenic dask==1.0.0 pandas==0.23.4

