
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {struct extent_buffer* node; } ;


 struct extent_buffer* btrfs_root_node (struct btrfs_root*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;

struct extent_buffer *btrfs_lock_root_node(struct btrfs_root *root)
{
 struct extent_buffer *eb;

 while (1) {
  eb = btrfs_root_node(root);
  btrfs_tree_lock(eb);
  if (eb == root->node)
   break;
  btrfs_tree_unlock(eb);
  free_extent_buffer(eb);
 }
 return eb;
}
