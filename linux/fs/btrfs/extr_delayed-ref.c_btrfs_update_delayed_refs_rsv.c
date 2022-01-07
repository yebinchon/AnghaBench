
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int delayed_ref_updates; struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int lock; scalar_t__ full; int size; } ;
struct btrfs_fs_info {struct btrfs_block_rsv delayed_refs_rsv; } ;


 scalar_t__ btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_update_delayed_refs_rsv(struct btrfs_trans_handle *trans)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_block_rsv *delayed_rsv = &fs_info->delayed_refs_rsv;
 u64 num_bytes;

 if (!trans->delayed_ref_updates)
  return;

 num_bytes = btrfs_calc_insert_metadata_size(fs_info,
          trans->delayed_ref_updates);
 spin_lock(&delayed_rsv->lock);
 delayed_rsv->size += num_bytes;
 delayed_rsv->full = 0;
 spin_unlock(&delayed_rsv->lock);
 trans->delayed_ref_updates = 0;
}
