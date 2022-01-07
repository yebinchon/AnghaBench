
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int EIO ;
 int btrfs_check_rw_degradable (struct btrfs_fs_info*,int *) ;

__attribute__((used)) static int check_barrier_error(struct btrfs_fs_info *fs_info)
{
 if (!btrfs_check_rw_degradable(fs_info, ((void*)0)))
  return -EIO;
 return 0;
}
