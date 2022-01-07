
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ulist {scalar_t__ nnodes; } ;
struct btrfs_trans_handle {int transid; struct btrfs_fs_info* fs_info; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_fs_info {int qgroup_flags; scalar_t__ qgroup_seq; int qgroup_lock; int qgroup_rescan_lock; TYPE_1__ qgroup_rescan_progress; int quota_root; int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int UPDATE_NEW ;
 int UPDATE_OLD ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int maybe_fs_roots (struct ulist*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qgroup_update_counters (struct btrfs_fs_info*,struct ulist*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int qgroup_update_refcnt (struct btrfs_fs_info*,struct ulist*,struct ulist*,struct ulist*,scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int trace_btrfs_qgroup_account_extent (struct btrfs_fs_info*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct ulist* ulist_alloc (int ) ;
 int ulist_free (struct ulist*) ;

int btrfs_qgroup_account_extent(struct btrfs_trans_handle *trans, u64 bytenr,
    u64 num_bytes, struct ulist *old_roots,
    struct ulist *new_roots)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct ulist *qgroups = ((void*)0);
 struct ulist *tmp = ((void*)0);
 u64 seq;
 u64 nr_new_roots = 0;
 u64 nr_old_roots = 0;
 int ret = 0;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
  return 0;

 if (new_roots) {
  if (!maybe_fs_roots(new_roots))
   goto out_free;
  nr_new_roots = new_roots->nnodes;
 }
 if (old_roots) {
  if (!maybe_fs_roots(old_roots))
   goto out_free;
  nr_old_roots = old_roots->nnodes;
 }


 if (nr_old_roots == 0 && nr_new_roots == 0)
  goto out_free;

 BUG_ON(!fs_info->quota_root);

 trace_btrfs_qgroup_account_extent(fs_info, trans->transid, bytenr,
     num_bytes, nr_old_roots, nr_new_roots);

 qgroups = ulist_alloc(GFP_NOFS);
 if (!qgroups) {
  ret = -ENOMEM;
  goto out_free;
 }
 tmp = ulist_alloc(GFP_NOFS);
 if (!tmp) {
  ret = -ENOMEM;
  goto out_free;
 }

 mutex_lock(&fs_info->qgroup_rescan_lock);
 if (fs_info->qgroup_flags & BTRFS_QGROUP_STATUS_FLAG_RESCAN) {
  if (fs_info->qgroup_rescan_progress.objectid <= bytenr) {
   mutex_unlock(&fs_info->qgroup_rescan_lock);
   ret = 0;
   goto out_free;
  }
 }
 mutex_unlock(&fs_info->qgroup_rescan_lock);

 spin_lock(&fs_info->qgroup_lock);
 seq = fs_info->qgroup_seq;


 ret = qgroup_update_refcnt(fs_info, old_roots, tmp, qgroups, seq,
       UPDATE_OLD);
 if (ret < 0)
  goto out;


 ret = qgroup_update_refcnt(fs_info, new_roots, tmp, qgroups, seq,
       UPDATE_NEW);
 if (ret < 0)
  goto out;

 qgroup_update_counters(fs_info, qgroups, nr_old_roots, nr_new_roots,
          num_bytes, seq);




 fs_info->qgroup_seq += max(nr_old_roots, nr_new_roots) + 1;
out:
 spin_unlock(&fs_info->qgroup_lock);
out_free:
 ulist_free(tmp);
 ulist_free(qgroups);
 ulist_free(old_roots);
 ulist_free(new_roots);
 return ret;
}
