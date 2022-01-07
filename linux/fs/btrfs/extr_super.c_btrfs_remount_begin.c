
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {unsigned long mount_opt; int sb; int defrag_running; int transaction_wait; } ;


 int AUTO_DEFRAG ;
 int SB_RDONLY ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ btrfs_raw_test_opt (unsigned long,int ) ;
 int sync_filesystem (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void btrfs_remount_begin(struct btrfs_fs_info *fs_info,
           unsigned long old_opts, int flags)
{
 if (btrfs_raw_test_opt(old_opts, AUTO_DEFRAG) &&
     (!btrfs_raw_test_opt(fs_info->mount_opt, AUTO_DEFRAG) ||
      (flags & SB_RDONLY))) {

  wait_event(fs_info->transaction_wait,
      (atomic_read(&fs_info->defrag_running) == 0));
  if (flags & SB_RDONLY)
   sync_filesystem(fs_info->sb);
 }
}
