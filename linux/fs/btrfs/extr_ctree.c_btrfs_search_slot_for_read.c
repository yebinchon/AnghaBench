
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;


 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_prev_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int ,int ) ;

int btrfs_search_slot_for_read(struct btrfs_root *root,
          const struct btrfs_key *key,
          struct btrfs_path *p, int find_higher,
          int return_any)
{
 int ret;
 struct extent_buffer *leaf;

again:
 ret = btrfs_search_slot(((void*)0), root, key, p, 0, 0);
 if (ret <= 0)
  return ret;







 leaf = p->nodes[0];

 if (find_higher) {
  if (p->slots[0] >= btrfs_header_nritems(leaf)) {
   ret = btrfs_next_leaf(root, p);
   if (ret <= 0)
    return ret;
   if (!return_any)
    return 1;




   return_any = 0;
   find_higher = 0;
   btrfs_release_path(p);
   goto again;
  }
 } else {
  if (p->slots[0] == 0) {
   ret = btrfs_prev_leaf(root, p);
   if (ret < 0)
    return ret;
   if (!ret) {
    leaf = p->nodes[0];
    if (p->slots[0] == btrfs_header_nritems(leaf))
     p->slots[0]--;
    return 0;
   }
   if (!return_any)
    return 1;




   return_any = 0;
   find_higher = 1;
   btrfs_release_path(p);
   goto again;
  } else {
   --p->slots[0];
  }
 }
 return 0;
}
