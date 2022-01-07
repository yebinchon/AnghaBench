
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int* slots; scalar_t__* nodes; } ;


 int BTRFS_MAX_LEVEL ;
 int btrfs_header_nritems (scalar_t__) ;

__attribute__((used)) static bool is_last_leaf(struct btrfs_path *path)
{
 int i;

 for (i = 1; i < BTRFS_MAX_LEVEL && path->nodes[i]; i++) {
  if (path->slots[i] != btrfs_header_nritems(path->nodes[i]) - 1)
   return 0;
 }
 return 1;
}
