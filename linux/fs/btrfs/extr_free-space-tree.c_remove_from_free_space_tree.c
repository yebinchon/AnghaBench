
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_group_cache {int free_space_lock; } ;


 int ASSERT (int ) ;
 int ENOENT ;
 int ENOMEM ;
 int FREE_SPACE_TREE ;
 int __remove_from_free_space_tree (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int ,int ) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_fs_compat_ro (int ,int ) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (int ,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int remove_from_free_space_tree(struct btrfs_trans_handle *trans,
    u64 start, u64 size)
{
 struct btrfs_block_group_cache *block_group;
 struct btrfs_path *path;
 int ret;

 if (!btrfs_fs_compat_ro(trans->fs_info, FREE_SPACE_TREE))
  return 0;

 path = btrfs_alloc_path();
 if (!path) {
  ret = -ENOMEM;
  goto out;
 }

 block_group = btrfs_lookup_block_group(trans->fs_info, start);
 if (!block_group) {
  ASSERT(0);
  ret = -ENOENT;
  goto out;
 }

 mutex_lock(&block_group->free_space_lock);
 ret = __remove_from_free_space_tree(trans, block_group, path, start,
         size);
 mutex_unlock(&block_group->free_space_lock);

 btrfs_put_block_group(block_group);
out:
 btrfs_free_path(path);
 if (ret)
  btrfs_abort_transaction(trans, ret);
 return ret;
}
