
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_item {int dummy; } ;


 int setup_leaf_for_split (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ;
 int split_item (struct btrfs_path*,struct btrfs_key const*,unsigned long) ;

int btrfs_split_item(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct btrfs_path *path,
       const struct btrfs_key *new_key,
       unsigned long split_offset)
{
 int ret;
 ret = setup_leaf_for_split(trans, root, path,
       sizeof(struct btrfs_item));
 if (ret)
  return ret;

 ret = split_item(path, new_key, split_offset);
 return ret;
}
