
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int wait_current_trans (struct btrfs_fs_info*) ;

void btrfs_throttle(struct btrfs_fs_info *fs_info)
{
 wait_current_trans(fs_info);
}
