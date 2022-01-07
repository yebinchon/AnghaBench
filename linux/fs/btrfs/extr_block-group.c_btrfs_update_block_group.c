
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_2__* transaction; int delayed_ref_updates; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int pinned_extents; int delalloc_root_lock; int super_copy; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {scalar_t__ cached; scalar_t__ disk_cache_state; scalar_t__ reserved; scalar_t__ pinned; int dirty_list; TYPE_3__* space_info; int lock; int item; TYPE_1__ key; int flags; } ;
struct TYPE_6__ {scalar_t__ bytes_reserved; scalar_t__ bytes_used; scalar_t__ disk_used; int total_bytes_pinned; int lock; } ;
struct TYPE_5__ {int dirty_bgs_lock; int dirty_bgs; } ;


 scalar_t__ BTRFS_CACHE_NO ;
 scalar_t__ BTRFS_DC_CLEAR ;
 int BTRFS_TOTAL_BYTES_PINNED_BATCH ;
 int ENOENT ;
 int GFP_NOFS ;
 int SPACE_CACHE ;
 int WARN_ON (int) ;
 int __GFP_NOFAIL ;
 int btrfs_bg_type_to_factor (int ) ;
 scalar_t__ btrfs_block_group_used (int *) ;
 int btrfs_cache_block_group (struct btrfs_block_group_cache*,int) ;
 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,scalar_t__) ;
 int btrfs_mark_bg_unused (struct btrfs_block_group_cache*) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_set_block_group_used (int *,scalar_t__) ;
 int btrfs_set_super_bytes_used (int ,scalar_t__) ;
 int btrfs_space_info_update_bytes_pinned (struct btrfs_fs_info*,TYPE_3__*,scalar_t__) ;
 scalar_t__ btrfs_super_bytes_used (int ) ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfs_update_delayed_refs_rsv (struct btrfs_trans_handle*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int percpu_counter_add_batch (int *,scalar_t__,int ) ;
 int set_extent_dirty (int ,scalar_t__,scalar_t__,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_update_block_group(struct btrfs_trans_handle *trans,
        u64 bytenr, u64 num_bytes, int alloc)
{
 struct btrfs_fs_info *info = trans->fs_info;
 struct btrfs_block_group_cache *cache = ((void*)0);
 u64 total = num_bytes;
 u64 old_val;
 u64 byte_in_group;
 int factor;
 int ret = 0;


 spin_lock(&info->delalloc_root_lock);
 old_val = btrfs_super_bytes_used(info->super_copy);
 if (alloc)
  old_val += num_bytes;
 else
  old_val -= num_bytes;
 btrfs_set_super_bytes_used(info->super_copy, old_val);
 spin_unlock(&info->delalloc_root_lock);

 while (total) {
  cache = btrfs_lookup_block_group(info, bytenr);
  if (!cache) {
   ret = -ENOENT;
   break;
  }
  factor = btrfs_bg_type_to_factor(cache->flags);







  if (!alloc && cache->cached == BTRFS_CACHE_NO)
   btrfs_cache_block_group(cache, 1);

  byte_in_group = bytenr - cache->key.objectid;
  WARN_ON(byte_in_group > cache->key.offset);

  spin_lock(&cache->space_info->lock);
  spin_lock(&cache->lock);

  if (btrfs_test_opt(info, SPACE_CACHE) &&
      cache->disk_cache_state < BTRFS_DC_CLEAR)
   cache->disk_cache_state = BTRFS_DC_CLEAR;

  old_val = btrfs_block_group_used(&cache->item);
  num_bytes = min(total, cache->key.offset - byte_in_group);
  if (alloc) {
   old_val += num_bytes;
   btrfs_set_block_group_used(&cache->item, old_val);
   cache->reserved -= num_bytes;
   cache->space_info->bytes_reserved -= num_bytes;
   cache->space_info->bytes_used += num_bytes;
   cache->space_info->disk_used += num_bytes * factor;
   spin_unlock(&cache->lock);
   spin_unlock(&cache->space_info->lock);
  } else {
   old_val -= num_bytes;
   btrfs_set_block_group_used(&cache->item, old_val);
   cache->pinned += num_bytes;
   btrfs_space_info_update_bytes_pinned(info,
     cache->space_info, num_bytes);
   cache->space_info->bytes_used -= num_bytes;
   cache->space_info->disk_used -= num_bytes * factor;
   spin_unlock(&cache->lock);
   spin_unlock(&cache->space_info->lock);

   percpu_counter_add_batch(
     &cache->space_info->total_bytes_pinned,
     num_bytes,
     BTRFS_TOTAL_BYTES_PINNED_BATCH);
   set_extent_dirty(info->pinned_extents,
      bytenr, bytenr + num_bytes - 1,
      GFP_NOFS | __GFP_NOFAIL);
  }

  spin_lock(&trans->transaction->dirty_bgs_lock);
  if (list_empty(&cache->dirty_list)) {
   list_add_tail(&cache->dirty_list,
          &trans->transaction->dirty_bgs);
   trans->delayed_ref_updates++;
   btrfs_get_block_group(cache);
  }
  spin_unlock(&trans->transaction->dirty_bgs_lock);







  if (!alloc && old_val == 0)
   btrfs_mark_bg_unused(cache);

  btrfs_put_block_group(cache);
  total -= num_bytes;
  bytenr += num_bytes;
 }


 btrfs_update_delayed_refs_rsv(trans);
 return ret;
}
