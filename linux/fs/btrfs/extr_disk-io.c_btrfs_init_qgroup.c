
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int qgroup_seq; int qgroup_rescan_running; int qgroup_rescan_lock; int * qgroup_ulist; int dirty_qgroups; int qgroup_tree; int qgroup_ioctl_lock; int qgroup_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void btrfs_init_qgroup(struct btrfs_fs_info *fs_info)
{
 spin_lock_init(&fs_info->qgroup_lock);
 mutex_init(&fs_info->qgroup_ioctl_lock);
 fs_info->qgroup_tree = RB_ROOT;
 INIT_LIST_HEAD(&fs_info->dirty_qgroups);
 fs_info->qgroup_seq = 1;
 fs_info->qgroup_ulist = ((void*)0);
 fs_info->qgroup_rescan_running = 0;
 mutex_init(&fs_info->qgroup_rescan_lock);
}
