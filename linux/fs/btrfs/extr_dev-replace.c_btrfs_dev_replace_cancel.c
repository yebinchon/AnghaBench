
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_dev_replace {int replace_state; int item_needs_writeback; int lock_finishing_cancel_unmount; int rwsem; int time_stopped; struct btrfs_device* srcdev; struct btrfs_device* tgtdev; } ;
struct btrfs_fs_info {int sb; struct btrfs_root* tree_root; struct btrfs_dev_replace dev_replace; } ;
struct btrfs_device {int devid; } ;


 int ASSERT (int) ;
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED ;
 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR ;





 int EINVAL ;
 int ENOTCONN ;
 int EROFS ;
 int IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int WARN_ON (int) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_destroy_dev_replace_tgtdev (struct btrfs_device*) ;
 int btrfs_dev_name (struct btrfs_device*) ;
 int btrfs_info_in_rcu (struct btrfs_fs_info*,char*,int ,int ,int ) ;
 int btrfs_scrub_cancel (struct btrfs_fs_info*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int down_write (int *) ;
 int ktime_get_real_seconds () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sb_rdonly (int ) ;
 int up_write (int *) ;

int btrfs_dev_replace_cancel(struct btrfs_fs_info *fs_info)
{
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
 struct btrfs_device *tgt_device = ((void*)0);
 struct btrfs_device *src_device = ((void*)0);
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = fs_info->tree_root;
 int result;
 int ret;

 if (sb_rdonly(fs_info->sb))
  return -EROFS;

 mutex_lock(&dev_replace->lock_finishing_cancel_unmount);
 down_write(&dev_replace->rwsem);
 switch (dev_replace->replace_state) {
 case 130:
 case 131:
 case 132:
  result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED;
  up_write(&dev_replace->rwsem);
  break;
 case 129:
  tgt_device = dev_replace->tgtdev;
  src_device = dev_replace->srcdev;
  up_write(&dev_replace->rwsem);
  ret = btrfs_scrub_cancel(fs_info);
  if (ret < 0) {
   result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED;
  } else {
   result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;




   btrfs_info_in_rcu(fs_info,
    "dev_replace from %s (devid %llu) to %s canceled",
    btrfs_dev_name(src_device), src_device->devid,
    btrfs_dev_name(tgt_device));
  }
  break;
 case 128:




  result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;
  tgt_device = dev_replace->tgtdev;
  src_device = dev_replace->srcdev;
  dev_replace->tgtdev = ((void*)0);
  dev_replace->srcdev = ((void*)0);
  dev_replace->replace_state =
    132;
  dev_replace->time_stopped = ktime_get_real_seconds();
  dev_replace->item_needs_writeback = 1;

  up_write(&dev_replace->rwsem);


  ret = btrfs_scrub_cancel(fs_info);
  ASSERT(ret != -ENOTCONN);

  trans = btrfs_start_transaction(root, 0);
  if (IS_ERR(trans)) {
   mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
   return PTR_ERR(trans);
  }
  ret = btrfs_commit_transaction(trans);
  WARN_ON(ret);

  btrfs_info_in_rcu(fs_info,
  "suspended dev_replace from %s (devid %llu) to %s canceled",
   btrfs_dev_name(src_device), src_device->devid,
   btrfs_dev_name(tgt_device));

  if (tgt_device)
   btrfs_destroy_dev_replace_tgtdev(tgt_device);
  break;
 default:
  up_write(&dev_replace->rwsem);
  result = -EINVAL;
 }

 mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
 return result;
}
