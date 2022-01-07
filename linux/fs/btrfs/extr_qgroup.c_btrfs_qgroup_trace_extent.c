
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; struct btrfs_fs_info* fs_info; } ;
struct btrfs_qgroup_extent_record {int * old_roots; scalar_t__ num_bytes; scalar_t__ bytenr; } ;
struct btrfs_fs_info {int flags; } ;
struct btrfs_delayed_ref_root {int lock; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int ENOMEM ;
 int btrfs_qgroup_trace_extent_nolock (struct btrfs_fs_info*,struct btrfs_delayed_ref_root*,struct btrfs_qgroup_extent_record*) ;
 int btrfs_qgroup_trace_extent_post (struct btrfs_fs_info*,struct btrfs_qgroup_extent_record*) ;
 int kfree (struct btrfs_qgroup_extent_record*) ;
 struct btrfs_qgroup_extent_record* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

int btrfs_qgroup_trace_extent(struct btrfs_trans_handle *trans, u64 bytenr,
         u64 num_bytes, gfp_t gfp_flag)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_qgroup_extent_record *record;
 struct btrfs_delayed_ref_root *delayed_refs;
 int ret;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags)
     || bytenr == 0 || num_bytes == 0)
  return 0;
 record = kzalloc(sizeof(*record), gfp_flag);
 if (!record)
  return -ENOMEM;

 delayed_refs = &trans->transaction->delayed_refs;
 record->bytenr = bytenr;
 record->num_bytes = num_bytes;
 record->old_roots = ((void*)0);

 spin_lock(&delayed_refs->lock);
 ret = btrfs_qgroup_trace_extent_nolock(fs_info, delayed_refs, record);
 spin_unlock(&delayed_refs->lock);
 if (ret > 0) {
  kfree(record);
  return 0;
 }
 return btrfs_qgroup_trace_extent_post(fs_info, record);
}
