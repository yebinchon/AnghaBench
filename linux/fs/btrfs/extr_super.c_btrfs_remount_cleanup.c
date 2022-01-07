
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {unsigned long mount_opt; int fs_state; int sb; } ;


 int AUTO_DEFRAG ;
 int BTRFS_FS_STATE_REMOUNTING ;
 int btrfs_cleanup_defrag_inodes (struct btrfs_fs_info*) ;
 scalar_t__ btrfs_raw_test_opt (unsigned long,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ sb_rdonly (int ) ;

__attribute__((used)) static inline void btrfs_remount_cleanup(struct btrfs_fs_info *fs_info,
      unsigned long old_opts)
{




 if (btrfs_raw_test_opt(old_opts, AUTO_DEFRAG) &&
     (!btrfs_raw_test_opt(fs_info->mount_opt, AUTO_DEFRAG) || sb_rdonly(fs_info->sb))) {
  btrfs_cleanup_defrag_inodes(fs_info);
 }

 clear_bit(BTRFS_FS_STATE_REMOUNTING, &fs_info->fs_state);
}
