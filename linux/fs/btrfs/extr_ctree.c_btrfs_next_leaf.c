
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;


 int btrfs_next_old_leaf (struct btrfs_root*,struct btrfs_path*,int ) ;

int btrfs_next_leaf(struct btrfs_root *root, struct btrfs_path *path)
{
 return btrfs_next_old_leaf(root, path, 0);
}
