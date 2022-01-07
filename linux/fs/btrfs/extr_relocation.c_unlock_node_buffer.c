
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_node {scalar_t__ locked; int eb; } ;


 int btrfs_tree_unlock (int ) ;

__attribute__((used)) static void unlock_node_buffer(struct backref_node *node)
{
 if (node->locked) {
  btrfs_tree_unlock(node->eb);
  node->locked = 0;
 }
}
