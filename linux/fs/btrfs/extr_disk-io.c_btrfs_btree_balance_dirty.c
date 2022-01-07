
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int __btrfs_btree_balance_dirty (struct btrfs_fs_info*,int) ;

void btrfs_btree_balance_dirty(struct btrfs_fs_info *fs_info)
{
 __btrfs_btree_balance_dirty(fs_info, 1);
}
