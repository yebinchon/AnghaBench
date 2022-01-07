
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btrfs_fs_info {int scrub_wr_completion_workers; int readahead_workers; int delayed_workers; int endio_freespace_worker; int endio_write_workers; int endio_meta_write_workers; int endio_meta_workers; int endio_workers; int caching_workers; int submit_workers; int delalloc_workers; int workers; scalar_t__ thread_pool_size; } ;


 int btrfs_info (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__) ;
 int btrfs_workqueue_set_max (int ,scalar_t__) ;

__attribute__((used)) static void btrfs_resize_thread_pool(struct btrfs_fs_info *fs_info,
         u32 new_pool_size, u32 old_pool_size)
{
 if (new_pool_size == old_pool_size)
  return;

 fs_info->thread_pool_size = new_pool_size;

 btrfs_info(fs_info, "resize thread pool %d -> %d",
        old_pool_size, new_pool_size);

 btrfs_workqueue_set_max(fs_info->workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->delalloc_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->submit_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->caching_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->endio_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->endio_meta_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->endio_meta_write_workers,
    new_pool_size);
 btrfs_workqueue_set_max(fs_info->endio_write_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->endio_freespace_worker, new_pool_size);
 btrfs_workqueue_set_max(fs_info->delayed_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->readahead_workers, new_pool_size);
 btrfs_workqueue_set_max(fs_info->scrub_wr_completion_workers,
    new_pool_size);
}
