
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; int type; } ;


 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,scalar_t__) ;
 int btrfs_prev_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;

int btrfs_previous_item(struct btrfs_root *root,
   struct btrfs_path *path, u64 min_objectid,
   int type)
{
 struct btrfs_key found_key;
 struct extent_buffer *leaf;
 u32 nritems;
 int ret;

 while (1) {
  if (path->slots[0] == 0) {
   btrfs_set_path_blocking(path);
   ret = btrfs_prev_leaf(root, path);
   if (ret != 0)
    return ret;
  } else {
   path->slots[0]--;
  }
  leaf = path->nodes[0];
  nritems = btrfs_header_nritems(leaf);
  if (nritems == 0)
   return 1;
  if (path->slots[0] == nritems)
   path->slots[0]--;

  btrfs_item_key_to_cpu(leaf, &found_key, path->slots[0]);
  if (found_key.objectid < min_objectid)
   break;
  if (found_key.type == type)
   return 0;
  if (found_key.objectid == min_objectid &&
      found_key.type < type)
   break;
 }
 return 1;
}
