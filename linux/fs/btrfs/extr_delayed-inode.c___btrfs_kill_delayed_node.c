
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_delayed_node {int mutex; int flags; struct btrfs_root* root; } ;
struct btrfs_delayed_item {int dummy; } ;


 int BTRFS_DELAYED_NODE_DEL_IREF ;
 int BTRFS_DELAYED_NODE_INODE_DIRTY ;
 struct btrfs_delayed_item* __btrfs_first_delayed_deletion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_first_delayed_insertion_item (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_item* __btrfs_next_delayed_item (struct btrfs_delayed_item*) ;
 int btrfs_delayed_inode_release_metadata (struct btrfs_fs_info*,struct btrfs_delayed_node*,int) ;
 int btrfs_delayed_item_release_metadata (struct btrfs_root*,struct btrfs_delayed_item*) ;
 int btrfs_release_delayed_inode (struct btrfs_delayed_node*) ;
 int btrfs_release_delayed_iref (struct btrfs_delayed_node*) ;
 int btrfs_release_delayed_item (struct btrfs_delayed_item*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __btrfs_kill_delayed_node(struct btrfs_delayed_node *delayed_node)
{
 struct btrfs_root *root = delayed_node->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_delayed_item *curr_item, *prev_item;

 mutex_lock(&delayed_node->mutex);
 curr_item = __btrfs_first_delayed_insertion_item(delayed_node);
 while (curr_item) {
  btrfs_delayed_item_release_metadata(root, curr_item);
  prev_item = curr_item;
  curr_item = __btrfs_next_delayed_item(prev_item);
  btrfs_release_delayed_item(prev_item);
 }

 curr_item = __btrfs_first_delayed_deletion_item(delayed_node);
 while (curr_item) {
  btrfs_delayed_item_release_metadata(root, curr_item);
  prev_item = curr_item;
  curr_item = __btrfs_next_delayed_item(prev_item);
  btrfs_release_delayed_item(prev_item);
 }

 if (test_bit(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags))
  btrfs_release_delayed_iref(delayed_node);

 if (test_bit(BTRFS_DELAYED_NODE_INODE_DIRTY, &delayed_node->flags)) {
  btrfs_delayed_inode_release_metadata(fs_info, delayed_node, 0);
  btrfs_release_delayed_inode(delayed_node);
 }
 mutex_unlock(&delayed_node->mutex);
}
