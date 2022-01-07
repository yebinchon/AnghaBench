
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* tree_root; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int,int) ;

int btrfs_del_root(struct btrfs_trans_handle *trans,
     const struct btrfs_key *key)
{
 struct btrfs_root *root = trans->fs_info->tree_root;
 struct btrfs_path *path;
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 ret = btrfs_search_slot(trans, root, key, path, -1, 1);
 if (ret < 0)
  goto out;

 BUG_ON(ret != 0);

 ret = btrfs_del_item(trans, root, path);
out:
 btrfs_free_path(path);
 return ret;
}
