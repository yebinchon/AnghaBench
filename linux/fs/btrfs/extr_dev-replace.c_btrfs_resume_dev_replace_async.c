
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct btrfs_dev_replace {int replace_state; int rwsem; TYPE_1__* tgtdev; } ;
struct btrfs_fs_info {int flags; struct btrfs_dev_replace dev_replace; } ;
struct TYPE_2__ {int bdev; } ;


 int BTRFS_FS_EXCL_OP ;





 int PTR_ERR_OR_ZERO (struct task_struct*) ;
 int btrfs_dev_replace_kthread ;
 int btrfs_info (struct btrfs_fs_info*,char*) ;
 int down_write (int *) ;
 struct task_struct* kthread_run (int ,struct btrfs_fs_info*,char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int up_write (int *) ;

int btrfs_resume_dev_replace_async(struct btrfs_fs_info *fs_info)
{
 struct task_struct *task;
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;

 down_write(&dev_replace->rwsem);

 switch (dev_replace->replace_state) {
 case 130:
 case 131:
 case 132:
  up_write(&dev_replace->rwsem);
  return 0;
 case 129:
  break;
 case 128:
  dev_replace->replace_state =
   129;
  break;
 }
 if (!dev_replace->tgtdev || !dev_replace->tgtdev->bdev) {
  btrfs_info(fs_info,
      "cannot continue dev_replace, tgtdev is missing");
  btrfs_info(fs_info,
      "you may cancel the operation after 'mount -o degraded'");
  dev_replace->replace_state =
     128;
  up_write(&dev_replace->rwsem);
  return 0;
 }
 up_write(&dev_replace->rwsem);






 if (test_and_set_bit(BTRFS_FS_EXCL_OP, &fs_info->flags)) {
  down_write(&dev_replace->rwsem);
  dev_replace->replace_state =
     128;
  up_write(&dev_replace->rwsem);
  btrfs_info(fs_info,
  "cannot resume dev-replace, other exclusive operation running");
  return 0;
 }

 task = kthread_run(btrfs_dev_replace_kthread, fs_info, "btrfs-devrepl");
 return PTR_ERR_OR_ZERO(task);
}
