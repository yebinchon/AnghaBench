
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {scalar_t__ index_cnt; } ;
struct btrfs_delayed_node {scalar_t__ index_cnt; } ;


 int EINVAL ;
 int ENOENT ;
 struct btrfs_delayed_node* btrfs_get_delayed_node (struct btrfs_inode*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;

int btrfs_inode_delayed_dir_index_count(struct btrfs_inode *inode)
{
 struct btrfs_delayed_node *delayed_node = btrfs_get_delayed_node(inode);

 if (!delayed_node)
  return -ENOENT;






 if (!delayed_node->index_cnt) {
  btrfs_release_delayed_node(delayed_node);
  return -EINVAL;
 }

 inode->index_cnt = delayed_node->index_cnt;
 btrfs_release_delayed_node(delayed_node);
 return 0;
}
