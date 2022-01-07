
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_CLOSING_DONE ;
 int BTRFS_FS_CLOSING_START ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int btrfs_fs_closing(struct btrfs_fs_info *fs_info)
{



 if (test_bit(BTRFS_FS_CLOSING_START, &fs_info->flags)) {
  if (test_bit(BTRFS_FS_CLOSING_DONE, &fs_info->flags))
   return 2;
  return 1;
 }
 return 0;
}
