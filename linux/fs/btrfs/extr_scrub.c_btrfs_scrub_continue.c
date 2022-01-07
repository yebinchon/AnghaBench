
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_pause_wait; int scrub_pause_req; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

void btrfs_scrub_continue(struct btrfs_fs_info *fs_info)
{
 atomic_dec(&fs_info->scrub_pause_req);
 wake_up(&fs_info->scrub_pause_wait);
}
