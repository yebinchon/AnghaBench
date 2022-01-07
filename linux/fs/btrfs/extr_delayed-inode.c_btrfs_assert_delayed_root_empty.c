
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int delayed_root; } ;


 int WARN_ON (int ) ;
 int btrfs_first_delayed_node (int ) ;

void btrfs_assert_delayed_root_empty(struct btrfs_fs_info *fs_info)
{
 WARN_ON(btrfs_first_delayed_node(fs_info->delayed_root));
}
