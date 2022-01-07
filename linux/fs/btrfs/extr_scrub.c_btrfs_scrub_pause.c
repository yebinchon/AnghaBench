
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_lock; int scrubs_running; int scrubs_paused; int scrub_pause_wait; int scrub_pause_req; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

void btrfs_scrub_pause(struct btrfs_fs_info *fs_info)
{
 mutex_lock(&fs_info->scrub_lock);
 atomic_inc(&fs_info->scrub_pause_req);
 while (atomic_read(&fs_info->scrubs_paused) !=
        atomic_read(&fs_info->scrubs_running)) {
  mutex_unlock(&fs_info->scrub_lock);
  wait_event(fs_info->scrub_pause_wait,
      atomic_read(&fs_info->scrubs_paused) ==
      atomic_read(&fs_info->scrubs_running));
  mutex_lock(&fs_info->scrub_lock);
 }
 mutex_unlock(&fs_info->scrub_lock);
}
