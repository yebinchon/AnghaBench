
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int* slots; int ** nodes; } ;


 int btrfs_header_nritems (int *) ;
 int free_extent_buffer (int *) ;

__attribute__((used)) static int tree_move_next_or_upnext(struct btrfs_path *path,
        int *level, int root_level)
{
 int ret = 0;
 int nritems;
 nritems = btrfs_header_nritems(path->nodes[*level]);

 path->slots[*level]++;

 while (path->slots[*level] >= nritems) {
  if (*level == root_level)
   return -1;


  path->slots[*level] = 0;
  free_extent_buffer(path->nodes[*level]);
  path->nodes[*level] = ((void*)0);
  (*level)++;
  path->slots[*level]++;

  nritems = btrfs_header_nritems(path->nodes[*level]);
  ret = 1;
 }
 return ret;
}
