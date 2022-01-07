
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int transaction_kthread; int flags; } ;


 int BTRFS_FS_NEED_ASYNC_COMMIT ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void btrfs_commit_transaction_locksafe(
  struct btrfs_fs_info *fs_info)
{
 set_bit(BTRFS_FS_NEED_ASYNC_COMMIT, &fs_info->flags);
 wake_up_process(fs_info->transaction_kthread);
}
