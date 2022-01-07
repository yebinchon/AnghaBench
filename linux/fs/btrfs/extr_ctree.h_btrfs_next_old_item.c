
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; int * nodes; } ;


 scalar_t__ btrfs_header_nritems (int ) ;
 int btrfs_next_old_leaf (struct btrfs_root*,struct btrfs_path*,int ) ;

__attribute__((used)) static inline int btrfs_next_old_item(struct btrfs_root *root,
          struct btrfs_path *p, u64 time_seq)
{
 ++p->slots[0];
 if (p->slots[0] >= btrfs_header_nritems(p->nodes[0]))
  return btrfs_next_old_leaf(root, p, time_seq);
 return 0;
}
