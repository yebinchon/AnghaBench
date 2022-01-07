
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int * commit_root; int * node; } ;


 int free_extent_buffer (int *) ;

__attribute__((used)) static void free_root_extent_buffers(struct btrfs_root *root)
{
 if (root) {
  free_extent_buffer(root->node);
  free_extent_buffer(root->commit_root);
  root->node = ((void*)0);
  root->commit_root = ((void*)0);
 }
}
