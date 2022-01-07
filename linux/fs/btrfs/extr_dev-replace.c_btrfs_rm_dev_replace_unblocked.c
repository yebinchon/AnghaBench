
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int replace_wait; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; int fs_state; } ;


 int BTRFS_FS_STATE_DEV_REPLACING ;
 int clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void btrfs_rm_dev_replace_unblocked(struct btrfs_fs_info *fs_info)
{
 clear_bit(BTRFS_FS_STATE_DEV_REPLACING, &fs_info->fs_state);
 wake_up(&fs_info->dev_replace.replace_wait);
}
