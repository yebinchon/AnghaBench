
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {int sync_writers; } ;
struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_CSUM_IMPL_FAST ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int check_async_write(struct btrfs_fs_info *fs_info,
        struct btrfs_inode *bi)
{
 if (atomic_read(&bi->sync_writers))
  return 0;
 if (test_bit(BTRFS_FS_CSUM_IMPL_FAST, &fs_info->flags))
  return 0;
 return 1;
}
