
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int CAP_SYS_ADMIN ;
 long EPERM ;
 long btrfs_scrub_cancel (struct btrfs_fs_info*) ;
 int capable (int ) ;

__attribute__((used)) static long btrfs_ioctl_scrub_cancel(struct btrfs_fs_info *fs_info)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return btrfs_scrub_cancel(fs_info);
}
