
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {int inode_lock; int delayed_nodes_tree; } ;
struct btrfs_delayed_node {int refs; scalar_t__ inode_id; } ;


 int ARRAY_SIZE (struct btrfs_delayed_node**) ;
 int __btrfs_kill_delayed_node (struct btrfs_delayed_node*) ;
 int btrfs_release_delayed_node (struct btrfs_delayed_node*) ;
 int radix_tree_gang_lookup (int *,void**,scalar_t__,int ) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_kill_all_delayed_nodes(struct btrfs_root *root)
{
 u64 inode_id = 0;
 struct btrfs_delayed_node *delayed_nodes[8];
 int i, n;

 while (1) {
  spin_lock(&root->inode_lock);
  n = radix_tree_gang_lookup(&root->delayed_nodes_tree,
        (void **)delayed_nodes, inode_id,
        ARRAY_SIZE(delayed_nodes));
  if (!n) {
   spin_unlock(&root->inode_lock);
   break;
  }

  inode_id = delayed_nodes[n - 1]->inode_id + 1;

  for (i = 0; i < n; i++)
   refcount_inc(&delayed_nodes[i]->refs);
  spin_unlock(&root->inode_lock);

  for (i = 0; i < n; i++) {
   __btrfs_kill_delayed_node(delayed_nodes[i]);
   btrfs_release_delayed_node(delayed_nodes[i]);
  }
 }
}
