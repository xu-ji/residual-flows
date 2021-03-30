#!/bin/bash
#SBATCH --nodes=1                           # Node count
#SBATCH --ntasks=1                          # Total number of tasks across all nodes
#SBATCH --cpus-per-task=8                   # Number of CPU cores per task
#SBATCH --mem=20gb                          # Job memory request
#SBATCH --time=168:00:00                    # Time limit hrs:min:sec
#SBATCH --partition=gpu                     # Partition (compute (default) / gpu)
#SBATCH --gres=gpu:1                        #
#SBATCH --exclude=gnodee8,gnodec1
#SBATCH --constraint=gmem24G|gmem32G|gmem48G


#SBATCH -o /users/xuji/residual-flows/out/slurm/slurm_%j.out
#SBATCH -e /users/xuji/residual-flows/out/slurm/slurm_%j.out


cd /users/xuji/residual-flows
source ../env_python3_3/bin/activate
echo $1
eval $1