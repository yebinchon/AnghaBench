
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; TYPE_2__* transaction; scalar_t__ aborted; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int global_block_rsv; struct btrfs_root* tree_root; } ;
struct TYPE_4__ {int offset; } ;
struct btrfs_block_group_cache {int disk_cache_state; scalar_t__ cache_generation; scalar_t__ cached; int lock; TYPE_1__ key; scalar_t__ ro; struct btrfs_fs_info* fs_info; } ;
struct TYPE_6__ {scalar_t__ generation; } ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ BTRFS_CACHE_FINISHED ;
 int BTRFS_DC_ERROR ;
 int BTRFS_DC_SETUP ;
 void* BTRFS_DC_WRITTEN ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_TRANS_CACHE_ENOSPC ;
 int BUG_ON (int) ;
 int ENOENT ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 int SPACE_CACHE ;
 int SZ_1M ;
 int SZ_256M ;
 int WARN_ON (int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_check_data_free_space (struct inode*,struct extent_changeset**,int ,int) ;
 int btrfs_check_trunc_cache_free_space (struct btrfs_fs_info*,int *) ;
 int btrfs_prealloc_file_range_trans (struct inode*,struct btrfs_trans_handle*,int ,int ,int,int,int,int*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfs_truncate_free_space_cache (struct btrfs_trans_handle*,int *,struct inode*) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int create_free_space_inode (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ;
 int div_u64 (int,int ) ;
 int extent_changeset_free (struct extent_changeset*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* lookup_free_space_inode (struct btrfs_block_group_cache*,struct btrfs_path*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cache_save_setup(struct btrfs_block_group_cache *block_group,
       struct btrfs_trans_handle *trans,
       struct btrfs_path *path)
{
 struct btrfs_fs_info *fs_info = block_group->fs_info;
 struct btrfs_root *root = fs_info->tree_root;
 struct inode *inode = ((void*)0);
 struct extent_changeset *data_reserved = ((void*)0);
 u64 alloc_hint = 0;
 int dcs = BTRFS_DC_ERROR;
 u64 num_pages = 0;
 int retries = 0;
 int ret = 0;





 if (block_group->key.offset < (100 * SZ_1M)) {
  spin_lock(&block_group->lock);
  block_group->disk_cache_state = BTRFS_DC_WRITTEN;
  spin_unlock(&block_group->lock);
  return 0;
 }

 if (trans->aborted)
  return 0;
again:
 inode = lookup_free_space_inode(block_group, path);
 if (IS_ERR(inode) && PTR_ERR(inode) != -ENOENT) {
  ret = PTR_ERR(inode);
  btrfs_release_path(path);
  goto out;
 }

 if (IS_ERR(inode)) {
  BUG_ON(retries);
  retries++;

  if (block_group->ro)
   goto out_free;

  ret = create_free_space_inode(trans, block_group, path);
  if (ret)
   goto out_free;
  goto again;
 }






 BTRFS_I(inode)->generation = 0;
 ret = btrfs_update_inode(trans, root, inode);
 if (ret) {
  btrfs_abort_transaction(trans, ret);
  goto out_put;
 }
 WARN_ON(ret);


 if (block_group->cache_generation == trans->transid &&
     i_size_read(inode)) {
  dcs = BTRFS_DC_SETUP;
  goto out_put;
 }

 if (i_size_read(inode) > 0) {
  ret = btrfs_check_trunc_cache_free_space(fs_info,
     &fs_info->global_block_rsv);
  if (ret)
   goto out_put;

  ret = btrfs_truncate_free_space_cache(trans, ((void*)0), inode);
  if (ret)
   goto out_put;
 }

 spin_lock(&block_group->lock);
 if (block_group->cached != BTRFS_CACHE_FINISHED ||
     !btrfs_test_opt(fs_info, SPACE_CACHE)) {






  dcs = BTRFS_DC_WRITTEN;
  spin_unlock(&block_group->lock);
  goto out_put;
 }
 spin_unlock(&block_group->lock);





 if (test_bit(BTRFS_TRANS_CACHE_ENOSPC, &trans->transaction->flags)) {
  ret = -ENOSPC;
  goto out_put;
 }







 num_pages = div_u64(block_group->key.offset, SZ_256M);
 if (!num_pages)
  num_pages = 1;

 num_pages *= 16;
 num_pages *= PAGE_SIZE;

 ret = btrfs_check_data_free_space(inode, &data_reserved, 0, num_pages);
 if (ret)
  goto out_put;

 ret = btrfs_prealloc_file_range_trans(inode, trans, 0, 0, num_pages,
           num_pages, num_pages,
           &alloc_hint);
 if (!ret)
  dcs = BTRFS_DC_SETUP;
 else if (ret == -ENOSPC)
  set_bit(BTRFS_TRANS_CACHE_ENOSPC, &trans->transaction->flags);

out_put:
 iput(inode);
out_free:
 btrfs_release_path(path);
out:
 spin_lock(&block_group->lock);
 if (!ret && dcs == BTRFS_DC_SETUP)
  block_group->cache_generation = trans->transid;
 block_group->disk_cache_state = dcs;
 spin_unlock(&block_group->lock);

 extent_changeset_free(data_reserved);
 return ret;
}
