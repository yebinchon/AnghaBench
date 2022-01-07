
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_dev_replace {int replace_state; int item_needs_writeback; int lock_finishing_cancel_unmount; int rwsem; int time_stopped; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; } ;







 int btrfs_info (struct btrfs_fs_info*,char*) ;
 int down_write (int *) ;
 int ktime_get_real_seconds () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

void btrfs_dev_replace_suspend_for_unmount(struct btrfs_fs_info *fs_info)
{
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;

 mutex_lock(&dev_replace->lock_finishing_cancel_unmount);
 down_write(&dev_replace->rwsem);

 switch (dev_replace->replace_state) {
 case 130:
 case 131:
 case 132:
 case 128:
  break;
 case 129:
  dev_replace->replace_state =
   128;
  dev_replace->time_stopped = ktime_get_real_seconds();
  dev_replace->item_needs_writeback = 1;
  btrfs_info(fs_info, "suspending dev_replace for unmount");
  break;
 }

 up_write(&dev_replace->rwsem);
 mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
}
