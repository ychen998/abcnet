#!/bin/bash

module load anaconda/2020.11 gcc/7.3 cuda/11.1
source activate pp


CUDA_VISIBLE_DEVICES=0,1,2,3 bash tools/dist_train.sh configs/tpsnet/tpsnet_totaltext_det.py work_dirs/pretrain 4


#python tools/train.py configs/tpsnet/tpsnet_totaltext_det.py 