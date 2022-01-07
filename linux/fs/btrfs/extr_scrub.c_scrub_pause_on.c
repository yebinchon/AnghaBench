
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_pause_wait; int scrubs_paused; } ;


 int atomic_inc (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void scrub_pause_on(struct btrfs_fs_info *fs_info)
{
 atomic_inc(&fs_info->scrubs_paused);
 wake_up(&fs_info->scrub_pause_wait);
}
