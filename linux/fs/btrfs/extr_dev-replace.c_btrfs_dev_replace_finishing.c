
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_tmp ;
typedef int u8 ;
typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_dev_replace {scalar_t__ replace_state; int item_needs_writeback; int lock_finishing_cancel_unmount; int rwsem; int time_stopped; struct btrfs_device* srcdev; struct btrfs_device* tgtdev; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; int chunk_mutex; struct btrfs_root* tree_root; struct btrfs_dev_replace dev_replace; } ;
struct btrfs_device {int dev_stats_ccnt; int dev_alloc_list; int bytes_used; int commit_bytes_used; int disk_total_bytes; int total_bytes; int * uuid; int devid; int dev_state; int name; int post_commit_list; } ;
struct TYPE_2__ {int device_list_mutex; int rw_devices; int alloc_list; } ;


 int BTRFS_DEV_REPLACE_DEVID ;
 int BTRFS_DEV_STATE_REPLACE_TGT ;
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED ;
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED ;
 scalar_t__ BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED ;
 int BTRFS_UUID_SIZE ;
 int ECANCELED ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int U64_MAX ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int btrfs_assign_next_active_device (struct btrfs_device*,struct btrfs_device*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_destroy_dev_replace_tgtdev (struct btrfs_device*) ;
 int btrfs_dev_name (struct btrfs_device*) ;
 int btrfs_dev_replace_update_device_in_mapping_tree (struct btrfs_fs_info*,struct btrfs_device*,struct btrfs_device*) ;
 int btrfs_device_set_bytes_used (struct btrfs_device*,int ) ;
 int btrfs_device_set_disk_total_bytes (struct btrfs_device*,int ) ;
 int btrfs_device_set_total_bytes (struct btrfs_device*,int ) ;
 int btrfs_err_in_rcu (struct btrfs_fs_info*,char*,int ,int ,int ,int) ;
 int btrfs_info_in_rcu (struct btrfs_fs_info*,char*,int ,int ,int ) ;
 int btrfs_rm_dev_replace_blocked (struct btrfs_fs_info*) ;
 int btrfs_rm_dev_replace_free_srcdev (struct btrfs_device*) ;
 int btrfs_rm_dev_replace_remove_srcdev (struct btrfs_device*) ;
 int btrfs_rm_dev_replace_unblocked (struct btrfs_fs_info*) ;
 int btrfs_start_delalloc_roots (struct btrfs_fs_info*,int) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_sysfs_rm_device_link (TYPE_1__*,struct btrfs_device*) ;
 int btrfs_wait_ordered_roots (struct btrfs_fs_info*,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int ktime_get_real_seconds () ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_str_deref (int ) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int btrfs_dev_replace_finishing(struct btrfs_fs_info *fs_info,
           int scrub_ret)
{
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
 struct btrfs_device *tgt_device;
 struct btrfs_device *src_device;
 struct btrfs_root *root = fs_info->tree_root;
 u8 uuid_tmp[BTRFS_UUID_SIZE];
 struct btrfs_trans_handle *trans;
 int ret = 0;


 mutex_lock(&dev_replace->lock_finishing_cancel_unmount);

 down_read(&dev_replace->rwsem);

 if (dev_replace->replace_state !=
     BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED) {
  up_read(&dev_replace->rwsem);
  mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
  return 0;
 }

 tgt_device = dev_replace->tgtdev;
 src_device = dev_replace->srcdev;
 up_read(&dev_replace->rwsem);





 ret = btrfs_start_delalloc_roots(fs_info, -1);
 if (ret) {
  mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
  return ret;
 }
 btrfs_wait_ordered_roots(fs_info, U64_MAX, 0, (u64)-1);






 while (1) {
  trans = btrfs_start_transaction(root, 0);
  if (IS_ERR(trans)) {
   mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);
   return PTR_ERR(trans);
  }
  ret = btrfs_commit_transaction(trans);
  WARN_ON(ret);


  mutex_lock(&fs_info->fs_devices->device_list_mutex);

  mutex_lock(&fs_info->chunk_mutex);

  if (!list_empty(&src_device->post_commit_list)) {
   mutex_unlock(&fs_info->fs_devices->device_list_mutex);
   mutex_unlock(&fs_info->chunk_mutex);
  } else {
   break;
  }
 }

 down_write(&dev_replace->rwsem);
 dev_replace->replace_state =
  scrub_ret ? BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED
     : BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED;
 dev_replace->tgtdev = ((void*)0);
 dev_replace->srcdev = ((void*)0);
 dev_replace->time_stopped = ktime_get_real_seconds();
 dev_replace->item_needs_writeback = 1;


 if (!scrub_ret) {
  btrfs_dev_replace_update_device_in_mapping_tree(fs_info,
        src_device,
        tgt_device);
 } else {
  if (scrub_ret != -ECANCELED)
   btrfs_err_in_rcu(fs_info,
     "btrfs_scrub_dev(%s, %llu, %s) failed %d",
     btrfs_dev_name(src_device),
     src_device->devid,
     rcu_str_deref(tgt_device->name), scrub_ret);
  up_write(&dev_replace->rwsem);
  mutex_unlock(&fs_info->chunk_mutex);
  mutex_unlock(&fs_info->fs_devices->device_list_mutex);
  btrfs_rm_dev_replace_blocked(fs_info);
  if (tgt_device)
   btrfs_destroy_dev_replace_tgtdev(tgt_device);
  btrfs_rm_dev_replace_unblocked(fs_info);
  mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);

  return scrub_ret;
 }

 btrfs_info_in_rcu(fs_info,
     "dev_replace from %s (devid %llu) to %s finished",
     btrfs_dev_name(src_device),
     src_device->devid,
     rcu_str_deref(tgt_device->name));
 clear_bit(BTRFS_DEV_STATE_REPLACE_TGT, &tgt_device->dev_state);
 tgt_device->devid = src_device->devid;
 src_device->devid = BTRFS_DEV_REPLACE_DEVID;
 memcpy(uuid_tmp, tgt_device->uuid, sizeof(uuid_tmp));
 memcpy(tgt_device->uuid, src_device->uuid, sizeof(tgt_device->uuid));
 memcpy(src_device->uuid, uuid_tmp, sizeof(src_device->uuid));
 btrfs_device_set_total_bytes(tgt_device, src_device->total_bytes);
 btrfs_device_set_disk_total_bytes(tgt_device,
       src_device->disk_total_bytes);
 btrfs_device_set_bytes_used(tgt_device, src_device->bytes_used);
 tgt_device->commit_bytes_used = src_device->bytes_used;

 btrfs_assign_next_active_device(src_device, tgt_device);

 list_add(&tgt_device->dev_alloc_list, &fs_info->fs_devices->alloc_list);
 fs_info->fs_devices->rw_devices++;

 up_write(&dev_replace->rwsem);
 btrfs_rm_dev_replace_blocked(fs_info);

 btrfs_rm_dev_replace_remove_srcdev(src_device);

 btrfs_rm_dev_replace_unblocked(fs_info);





 atomic_inc(&tgt_device->dev_stats_ccnt);
 mutex_unlock(&fs_info->chunk_mutex);
 mutex_unlock(&fs_info->fs_devices->device_list_mutex);


 btrfs_sysfs_rm_device_link(fs_info->fs_devices, src_device);
 btrfs_rm_dev_replace_free_srcdev(src_device);


 trans = btrfs_start_transaction(root, 0);
 if (!IS_ERR(trans))
  btrfs_commit_transaction(trans);

 mutex_unlock(&dev_replace->lock_finishing_cancel_unmount);

 return 0;
}
