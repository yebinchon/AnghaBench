
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_lock; int scrub_pause_req; int scrub_pause_wait; } ;


 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void __scrub_blocked_if_needed(struct btrfs_fs_info *fs_info)
{
 while (atomic_read(&fs_info->scrub_pause_req)) {
  mutex_unlock(&fs_info->scrub_lock);
  wait_event(fs_info->scrub_pause_wait,
     atomic_read(&fs_info->scrub_pause_req) == 0);
  mutex_lock(&fs_info->scrub_lock);
 }
}
