
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int qgroup_rescan_running; int qgroup_rescan_completion; int qgroup_rescan_lock; int qgroup_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

int btrfs_qgroup_wait_for_completion(struct btrfs_fs_info *fs_info,
         bool interruptible)
{
 int running;
 int ret = 0;

 mutex_lock(&fs_info->qgroup_rescan_lock);
 spin_lock(&fs_info->qgroup_lock);
 running = fs_info->qgroup_rescan_running;
 spin_unlock(&fs_info->qgroup_lock);
 mutex_unlock(&fs_info->qgroup_rescan_lock);

 if (!running)
  return 0;

 if (interruptible)
  ret = wait_for_completion_interruptible(
     &fs_info->qgroup_rescan_completion);
 else
  wait_for_completion(&fs_info->qgroup_rescan_completion);

 return ret;
}
