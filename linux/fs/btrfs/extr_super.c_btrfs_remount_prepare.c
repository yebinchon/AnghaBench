
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int fs_state; } ;


 int BTRFS_FS_STATE_REMOUNTING ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void btrfs_remount_prepare(struct btrfs_fs_info *fs_info)
{
 set_bit(BTRFS_FS_STATE_REMOUNTING, &fs_info->fs_state);
}
