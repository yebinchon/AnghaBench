
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int free_space_lock; int needs_free_space; } ;


 int ENOMEM ;
 int FREE_SPACE_TREE ;
 int __add_block_group_free_space (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_fs_compat_ro (struct btrfs_fs_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int add_block_group_free_space(struct btrfs_trans_handle *trans,
          struct btrfs_block_group_cache *block_group)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_path *path = ((void*)0);
 int ret = 0;

 if (!btrfs_fs_compat_ro(fs_info, FREE_SPACE_TREE))
  return 0;

 mutex_lock(&block_group->free_space_lock);
 if (!block_group->needs_free_space)
  goto out;

 path = btrfs_alloc_path();
 if (!path) {
  ret = -ENOMEM;
  goto out;
 }

 ret = __add_block_group_free_space(trans, block_group, path);

out:
 btrfs_free_path(path);
 mutex_unlock(&block_group->free_space_lock);
 if (ret)
  btrfs_abort_transaction(trans, ret);
 return ret;
}
