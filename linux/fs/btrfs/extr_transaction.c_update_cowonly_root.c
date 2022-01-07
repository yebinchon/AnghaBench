
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int root_item; int root_key; TYPE_1__* node; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 scalar_t__ btrfs_root_bytenr (int *) ;
 scalar_t__ btrfs_root_used (int *) ;
 int btrfs_set_root_node (int *,TYPE_1__*) ;
 int btrfs_update_root (struct btrfs_trans_handle*,struct btrfs_root*,int *,int *) ;

__attribute__((used)) static int update_cowonly_root(struct btrfs_trans_handle *trans,
          struct btrfs_root *root)
{
 int ret;
 u64 old_root_bytenr;
 u64 old_root_used;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_root *tree_root = fs_info->tree_root;

 old_root_used = btrfs_root_used(&root->root_item);

 while (1) {
  old_root_bytenr = btrfs_root_bytenr(&root->root_item);
  if (old_root_bytenr == root->node->start &&
      old_root_used == btrfs_root_used(&root->root_item))
   break;

  btrfs_set_root_node(&root->root_item, root->node);
  ret = btrfs_update_root(trans, tree_root,
     &root->root_key,
     &root->root_item);
  if (ret)
   return ret;

  old_root_used = btrfs_root_used(&root->root_item);
 }

 return 0;
}
