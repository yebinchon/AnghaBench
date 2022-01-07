
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ulist {int dummy; } ;
struct btrfs_qgroup {scalar_t__ excl; scalar_t__ rfer; } ;
struct btrfs_fs_info {int qgroup_flags; } ;


 int BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT ;
 int __qgroup_excl_accounting (struct btrfs_fs_info*,struct ulist*,int ,struct btrfs_qgroup*,int) ;
 struct btrfs_qgroup* find_qgroup_rb (struct btrfs_fs_info*,int ) ;

__attribute__((used)) static int quick_update_accounting(struct btrfs_fs_info *fs_info,
       struct ulist *tmp, u64 src, u64 dst,
       int sign)
{
 struct btrfs_qgroup *qgroup;
 int ret = 1;
 int err = 0;

 qgroup = find_qgroup_rb(fs_info, src);
 if (!qgroup)
  goto out;
 if (qgroup->excl == qgroup->rfer) {
  ret = 0;
  err = __qgroup_excl_accounting(fs_info, tmp, dst,
            qgroup, sign);
  if (err < 0) {
   ret = err;
   goto out;
  }
 }
out:
 if (ret)
  fs_info->qgroup_flags |= BTRFS_QGROUP_STATUS_FLAG_INCONSISTENT;
 return ret;
}
