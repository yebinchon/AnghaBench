
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int allocating_chunk; scalar_t__ chunk_bytes_reserved; struct btrfs_fs_info* fs_info; } ;
struct btrfs_space_info {int force_alloc; int full; int chunk_alloc; int lock; scalar_t__ max_extent_size; } ;
struct btrfs_fs_info {int metadata_ratio; int data_chunk_allocations; int chunk_mutex; } ;
typedef enum btrfs_chunk_alloc_enum { ____Placeholder_btrfs_chunk_alloc_enum } btrfs_chunk_alloc_enum ;


 int ASSERT (struct btrfs_space_info*) ;
 scalar_t__ BTRFS_BLOCK_GROUP_DATA ;
 scalar_t__ BTRFS_BLOCK_GROUP_METADATA ;
 int CHUNK_ALLOC_NO_FORCE ;
 int ENOSPC ;
 scalar_t__ SZ_2M ;
 int btrfs_alloc_chunk (struct btrfs_trans_handle*,scalar_t__) ;
 int btrfs_create_pending_block_groups (struct btrfs_trans_handle*) ;
 struct btrfs_space_info* btrfs_find_space_info (struct btrfs_fs_info*,scalar_t__) ;
 scalar_t__ btrfs_mixed_space_info (struct btrfs_space_info*) ;
 int check_system_chunk (struct btrfs_trans_handle*,scalar_t__) ;
 int cond_resched () ;
 int force_metadata_allocation (struct btrfs_fs_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int should_alloc_chunk (struct btrfs_fs_info*,struct btrfs_space_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_chunk_alloc(struct btrfs_trans_handle *trans, u64 flags,
        enum btrfs_chunk_alloc_enum force)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_space_info *space_info;
 bool wait_for_alloc = 0;
 bool should_alloc = 0;
 int ret = 0;


 if (trans->allocating_chunk)
  return -ENOSPC;

 space_info = btrfs_find_space_info(fs_info, flags);
 ASSERT(space_info);

 do {
  spin_lock(&space_info->lock);
  if (force < space_info->force_alloc)
   force = space_info->force_alloc;
  should_alloc = should_alloc_chunk(fs_info, space_info, force);
  if (space_info->full) {

   if (should_alloc)
    ret = -ENOSPC;
   else
    ret = 0;
   spin_unlock(&space_info->lock);
   return ret;
  } else if (!should_alloc) {
   spin_unlock(&space_info->lock);
   return 0;
  } else if (space_info->chunk_alloc) {






   wait_for_alloc = 1;
   spin_unlock(&space_info->lock);
   mutex_lock(&fs_info->chunk_mutex);
   mutex_unlock(&fs_info->chunk_mutex);
  } else {

   space_info->chunk_alloc = 1;
   wait_for_alloc = 0;
   spin_unlock(&space_info->lock);
  }

  cond_resched();
 } while (wait_for_alloc);

 mutex_lock(&fs_info->chunk_mutex);
 trans->allocating_chunk = 1;





 if (btrfs_mixed_space_info(space_info))
  flags |= (BTRFS_BLOCK_GROUP_DATA | BTRFS_BLOCK_GROUP_METADATA);






 if (flags & BTRFS_BLOCK_GROUP_DATA && fs_info->metadata_ratio) {
  fs_info->data_chunk_allocations++;
  if (!(fs_info->data_chunk_allocations %
        fs_info->metadata_ratio))
   force_metadata_allocation(fs_info);
 }





 check_system_chunk(trans, flags);

 ret = btrfs_alloc_chunk(trans, flags);
 trans->allocating_chunk = 0;

 spin_lock(&space_info->lock);
 if (ret < 0) {
  if (ret == -ENOSPC)
   space_info->full = 1;
  else
   goto out;
 } else {
  ret = 1;
  space_info->max_extent_size = 0;
 }

 space_info->force_alloc = CHUNK_ALLOC_NO_FORCE;
out:
 space_info->chunk_alloc = 0;
 spin_unlock(&space_info->lock);
 mutex_unlock(&fs_info->chunk_mutex);
 if (trans->chunk_bytes_reserved >= (u64)SZ_2M)
  btrfs_create_pending_block_groups(trans);

 return ret;
}
