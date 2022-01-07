
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int root_item; int state; TYPE_1__ root_key; } ;
struct btrfs_key {int dummy; } ;


 int BTRFS_ROOT_REF_COWS ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 scalar_t__ IS_ERR (struct btrfs_root*) ;
 int btrfs_check_and_init_root_item (int *) ;
 struct btrfs_root* btrfs_read_tree_root (struct btrfs_root*,struct btrfs_key*) ;
 int set_bit (int ,int *) ;

struct btrfs_root *btrfs_read_fs_root(struct btrfs_root *tree_root,
          struct btrfs_key *location)
{
 struct btrfs_root *root;

 root = btrfs_read_tree_root(tree_root, location);
 if (IS_ERR(root))
  return root;

 if (root->root_key.objectid != BTRFS_TREE_LOG_OBJECTID) {
  set_bit(BTRFS_ROOT_REF_COWS, &root->state);
  btrfs_check_and_init_root_item(&root->root_item);
 }

 return root;
}
