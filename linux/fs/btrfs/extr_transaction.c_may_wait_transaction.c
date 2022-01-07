
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_LOG_RECOVERING ;
 int TRANS_START ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int may_wait_transaction(struct btrfs_fs_info *fs_info, int type)
{
 if (test_bit(BTRFS_FS_LOG_RECOVERING, &fs_info->flags))
  return 0;

 if (type == TRANS_START)
  return 1;

 return 0;
}
