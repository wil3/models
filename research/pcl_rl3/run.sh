
#  --max_step=1000 --cutoff_agent=1000 \
RESULT_HOME=/home/wil/workspace/buflightdev/projects/neurocontroller/att-sitl/results/trpo
python3 -m pdb  trainer.py --logtostderr --batch_size=25 --env=flightcontrol-v0 \ #--env=MountainCarContinuous-v0  \ # \
  --validation_frequency=5 --rollout=10 --gamma=0.995 \
  --max_step=2 --cutoff_agent=1000 \
  --objective=trpo --norecurrent --internal_dim=64 --trust_region_p \
  --max_divergence=0.05 --value_opt=best_fit --critic_weight=0.0 \
  --save_dir=$RESULT_HOME/model/ \
  --ep_dir=$RESULT_HOME/episodes/\
