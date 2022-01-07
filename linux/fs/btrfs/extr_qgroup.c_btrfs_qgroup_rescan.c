
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int qgroup_rescan_work; int qgroup_rescan_workers; int qgroup_flags; int fs_root; } ;


 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (int ) ;
 int btrfs_queue_work (int ,int *) ;
 int qgroup_rescan_init (struct btrfs_fs_info*,int ,int) ;
 int qgroup_rescan_zero_tracking (struct btrfs_fs_info*) ;

int
btrfs_qgroup_rescan(struct btrfs_fs_info *fs_info)
{
 int ret = 0;
 struct btrfs_trans_handle *trans;

 ret = qgroup_rescan_init(fs_info, 0, 1);
 if (ret)
  return ret;
 trans = btrfs_join_transaction(fs_info->fs_root);
 if (IS_ERR(trans)) {
  fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_RESCAN;
  return PTR_ERR(trans);
 }
 ret = btrfs_commit_transaction(trans);
 if (ret) {
  fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_RESCAN;
  return ret;
 }

 qgroup_rescan_zero_tracking(fs_info);

 btrfs_queue_work(fs_info->qgroup_rescan_workers,
    &fs_info->qgroup_rescan_work);

 return 0;
}
