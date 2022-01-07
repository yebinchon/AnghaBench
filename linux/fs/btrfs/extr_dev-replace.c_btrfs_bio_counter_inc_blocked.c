
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int replace_wait; int bio_counter; } ;
struct btrfs_fs_info {int fs_state; TYPE_1__ dev_replace; } ;


 int BTRFS_FS_STATE_DEV_REPLACING ;
 int btrfs_bio_counter_dec (struct btrfs_fs_info*) ;
 scalar_t__ likely (int) ;
 int percpu_counter_inc (int *) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void btrfs_bio_counter_inc_blocked(struct btrfs_fs_info *fs_info)
{
 while (1) {
  percpu_counter_inc(&fs_info->dev_replace.bio_counter);
  if (likely(!test_bit(BTRFS_FS_STATE_DEV_REPLACING,
         &fs_info->fs_state)))
   break;

  btrfs_bio_counter_dec(fs_info);
  wait_event(fs_info->dev_replace.replace_wait,
      !test_bit(BTRFS_FS_STATE_DEV_REPLACING,
         &fs_info->fs_state));
 }
}
