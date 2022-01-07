
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {int dummy; } ;
struct btrfs_delayed_node {int dummy; } ;


 int __btrfs_kill_delayed_node (struct btrfs_delayed_node*) ;
 struct btrfs_delayed_node* btrfs_get_delayed_node (struct btrfs_inode*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;

void btrfs_kill_delayed_inode_items(struct btrfs_inode *inode)
{
 struct btrfs_delayed_node *delayed_node;

 delayed_node = btrfs_get_delayed_node(inode);
 if (!delayed_node)
  return;

 __btrfs_kill_delayed_node(delayed_node);
 btrfs_release_delayed_node(delayed_node);
}
