
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {scalar_t__* slots; scalar_t__* locks; int ** nodes; } ;


 int BTRFS_MAX_LEVEL ;
 scalar_t__ btrfs_header_nritems (int *) ;
 int btrfs_tree_unlock_rw (int *,scalar_t__) ;
 int free_extent_buffer (int *) ;

__attribute__((used)) static int walk_up_tree(struct btrfs_path *path, int *level)
{
 int l;

 for (l = 0; l < BTRFS_MAX_LEVEL; l++) {
  if (!path->nodes[l])
   continue;
  if (l) {
   path->slots[l]++;
   if (path->slots[l] <
       btrfs_header_nritems(path->nodes[l])) {
    *level = l;
    return 0;
   }
  }
  btrfs_tree_unlock_rw(path->nodes[l], path->locks[l]);
  free_extent_buffer(path->nodes[l]);
  path->nodes[l] = ((void*)0);
  path->slots[l] = 0;
  path->locks[l] = 0;
 }

 return 1;
}
