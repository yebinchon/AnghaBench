
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_pause_wait; int scrub_lock; int scrubs_paused; } ;


 int __scrub_blocked_if_needed (struct btrfs_fs_info*) ;
 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void scrub_pause_off(struct btrfs_fs_info *fs_info)
{
 mutex_lock(&fs_info->scrub_lock);
 __scrub_blocked_if_needed(fs_info);
 atomic_dec(&fs_info->scrubs_paused);
 mutex_unlock(&fs_info->scrub_lock);

 wake_up(&fs_info->scrub_pause_wait);
}
