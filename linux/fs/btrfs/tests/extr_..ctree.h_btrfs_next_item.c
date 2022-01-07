
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;


 int btrfs_next_old_item (struct btrfs_root*,struct btrfs_path*,int ) ;

__attribute__((used)) static inline int btrfs_next_item(struct btrfs_root *root, struct btrfs_path *p)
{
 return btrfs_next_old_item(root, p, 0);
}
