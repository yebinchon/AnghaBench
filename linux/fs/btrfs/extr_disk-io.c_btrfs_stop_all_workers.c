
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int endio_meta_write_workers; int endio_meta_workers; int qgroup_rescan_workers; int flush_workers; int readahead_workers; int caching_workers; int delayed_workers; int submit_workers; int endio_freespace_worker; int endio_write_workers; int rmw_workers; int endio_repair_workers; int endio_raid56_workers; int endio_workers; int workers; int delalloc_workers; int fixup_workers; } ;


 int btrfs_destroy_workqueue (int ) ;

__attribute__((used)) static void btrfs_stop_all_workers(struct btrfs_fs_info *fs_info)
{
 btrfs_destroy_workqueue(fs_info->fixup_workers);
 btrfs_destroy_workqueue(fs_info->delalloc_workers);
 btrfs_destroy_workqueue(fs_info->workers);
 btrfs_destroy_workqueue(fs_info->endio_workers);
 btrfs_destroy_workqueue(fs_info->endio_raid56_workers);
 btrfs_destroy_workqueue(fs_info->endio_repair_workers);
 btrfs_destroy_workqueue(fs_info->rmw_workers);
 btrfs_destroy_workqueue(fs_info->endio_write_workers);
 btrfs_destroy_workqueue(fs_info->endio_freespace_worker);
 btrfs_destroy_workqueue(fs_info->submit_workers);
 btrfs_destroy_workqueue(fs_info->delayed_workers);
 btrfs_destroy_workqueue(fs_info->caching_workers);
 btrfs_destroy_workqueue(fs_info->readahead_workers);
 btrfs_destroy_workqueue(fs_info->flush_workers);
 btrfs_destroy_workqueue(fs_info->qgroup_rescan_workers);





 btrfs_destroy_workqueue(fs_info->endio_meta_workers);
 btrfs_destroy_workqueue(fs_info->endio_meta_write_workers);
}
