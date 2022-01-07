
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int qgroup_flags; int qgroup_rescan_work; int qgroup_rescan_workers; } ;


 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ;
 int btrfs_queue_work (int ,int *) ;

void
btrfs_qgroup_rescan_resume(struct btrfs_fs_info *fs_info)
{
 if (fs_info->qgroup_flags & BTRFS_QGROUP_STATUS_FLAG_RESCAN)
  btrfs_queue_work(fs_info->qgroup_rescan_workers,
     &fs_info->qgroup_rescan_work);
}
