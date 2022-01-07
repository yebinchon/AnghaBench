
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {int transid; TYPE_1__* transaction; } ;
struct btrfs_fs_info {int ro_block_group_mutex; int chunk_mutex; int extent_root; } ;
struct btrfs_block_group_cache {int flags; TYPE_2__* space_info; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int BTRFS_TRANS_DIRTY_BG_RUN ;
 int CHUNK_ALLOC_FORCE ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_chunk_alloc (struct btrfs_trans_handle*,int,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_get_alloc_profile (struct btrfs_fs_info*,int ) ;
 struct btrfs_trans_handle* btrfs_join_transaction (int ) ;
 int btrfs_wait_for_commit (struct btrfs_fs_info*,int) ;
 int check_system_chunk (struct btrfs_trans_handle*,int) ;
 int inc_block_group_ro (struct btrfs_block_group_cache*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int update_block_group_flags (struct btrfs_fs_info*,int) ;

int btrfs_inc_block_group_ro(struct btrfs_block_group_cache *cache)

{
 struct btrfs_fs_info *fs_info = cache->fs_info;
 struct btrfs_trans_handle *trans;
 u64 alloc_flags;
 int ret;

again:
 trans = btrfs_join_transaction(fs_info->extent_root);
 if (IS_ERR(trans))
  return PTR_ERR(trans);






 mutex_lock(&fs_info->ro_block_group_mutex);
 if (test_bit(BTRFS_TRANS_DIRTY_BG_RUN, &trans->transaction->flags)) {
  u64 transid = trans->transid;

  mutex_unlock(&fs_info->ro_block_group_mutex);
  btrfs_end_transaction(trans);

  ret = btrfs_wait_for_commit(fs_info, transid);
  if (ret)
   return ret;
  goto again;
 }





 alloc_flags = update_block_group_flags(fs_info, cache->flags);
 if (alloc_flags != cache->flags) {
  ret = btrfs_chunk_alloc(trans, alloc_flags, CHUNK_ALLOC_FORCE);





  if (ret == -ENOSPC)
   ret = 0;
  if (ret < 0)
   goto out;
 }

 ret = inc_block_group_ro(cache, 0);
 if (!ret)
  goto out;
 alloc_flags = btrfs_get_alloc_profile(fs_info, cache->space_info->flags);
 ret = btrfs_chunk_alloc(trans, alloc_flags, CHUNK_ALLOC_FORCE);
 if (ret < 0)
  goto out;
 ret = inc_block_group_ro(cache, 0);
out:
 if (cache->flags & BTRFS_BLOCK_GROUP_SYSTEM) {
  alloc_flags = update_block_group_flags(fs_info, cache->flags);
  mutex_lock(&fs_info->chunk_mutex);
  check_system_chunk(trans, alloc_flags);
  mutex_unlock(&fs_info->chunk_mutex);
 }
 mutex_unlock(&fs_info->ro_block_group_mutex);

 btrfs_end_transaction(trans);
 return ret;
}
