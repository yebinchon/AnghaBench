
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int scrub_workers_refcnt; int scrub_pause_wait; int scrub_cancel_req; int scrubs_paused; int scrub_pause_req; int scrubs_running; int scrub_lock; } ;


 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int ) ;

__attribute__((used)) static void btrfs_init_scrub(struct btrfs_fs_info *fs_info)
{
 mutex_init(&fs_info->scrub_lock);
 atomic_set(&fs_info->scrubs_running, 0);
 atomic_set(&fs_info->scrub_pause_req, 0);
 atomic_set(&fs_info->scrubs_paused, 0);
 atomic_set(&fs_info->scrub_cancel_req, 0);
 init_waitqueue_head(&fs_info->scrub_pause_wait);
 refcount_set(&fs_info->scrub_workers_refcnt, 0);
}
