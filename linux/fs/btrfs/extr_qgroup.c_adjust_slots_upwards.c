
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; int * locks; } ;


 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_tree_unlock_rw (struct extent_buffer*,int ) ;
 int free_extent_buffer (struct extent_buffer*) ;

__attribute__((used)) static int adjust_slots_upwards(struct btrfs_path *path, int root_level)
{
 int level = 0;
 int nr, slot;
 struct extent_buffer *eb;

 if (root_level == 0)
  return 1;

 while (level <= root_level) {
  eb = path->nodes[level];
  nr = btrfs_header_nritems(eb);
  path->slots[level]++;
  slot = path->slots[level];
  if (slot >= nr || level == 0) {





   if (level != root_level) {
    btrfs_tree_unlock_rw(eb, path->locks[level]);
    path->locks[level] = 0;

    free_extent_buffer(eb);
    path->nodes[level] = ((void*)0);
    path->slots[level] = 0;
   }
  } else {





   break;
  }

  level++;
 }

 eb = path->nodes[root_level];
 if (path->slots[root_level] >= btrfs_header_nritems(eb))
  return 1;

 return 0;
}
