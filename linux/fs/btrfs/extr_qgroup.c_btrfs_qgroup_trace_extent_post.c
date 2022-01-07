
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ulist {int dummy; } ;
struct btrfs_qgroup_extent_record {struct ulist* old_roots; int bytenr; } ;
struct btrfs_fs_info {int qgroup_flags; } ;


 int BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT ;
 int btrfs_find_all_roots (int *,struct btrfs_fs_info*,int ,int ,struct ulist**,int) ;
 int btrfs_warn (struct btrfs_fs_info*,char*,int) ;

int btrfs_qgroup_trace_extent_post(struct btrfs_fs_info *fs_info,
       struct btrfs_qgroup_extent_record *qrecord)
{
 struct ulist *old_root;
 u64 bytenr = qrecord->bytenr;
 int ret;

 ret = btrfs_find_all_roots(((void*)0), fs_info, bytenr, 0, &old_root, 0);
 if (ret < 0) {
  fs_info->qgroup_flags |= BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT;
  btrfs_warn(fs_info,
"error accounting new delayed refs extent (err code: %d), quota inconsistent",
   ret);
  return 0;
 }
 qrecord->old_roots = old_root;
 return 0;
}
