
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bio_counter; int replace_wait; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; int fs_state; } ;


 int BTRFS_FS_STATE_DEV_REPLACING ;
 int percpu_counter_sum (int *) ;
 int set_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void btrfs_rm_dev_replace_blocked(struct btrfs_fs_info *fs_info)
{
 set_bit(BTRFS_FS_STATE_DEV_REPLACING, &fs_info->fs_state);
 wait_event(fs_info->dev_replace.replace_wait, !percpu_counter_sum(
     &fs_info->dev_replace.bio_counter));
}
