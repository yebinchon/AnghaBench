
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {struct btrfs_super_block* super_copy; } ;
typedef enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;


 int FEAT_COMPAT ;
 int FEAT_COMPAT_RO ;
 int btrfs_super_compat_flags (struct btrfs_super_block*) ;
 int btrfs_super_compat_ro_flags (struct btrfs_super_block*) ;
 int btrfs_super_incompat_flags (struct btrfs_super_block*) ;

__attribute__((used)) static u64 get_features(struct btrfs_fs_info *fs_info,
   enum btrfs_feature_set set)
{
 struct btrfs_super_block *disk_super = fs_info->super_copy;
 if (set == FEAT_COMPAT)
  return btrfs_super_compat_flags(disk_super);
 else if (set == FEAT_COMPAT_RO)
  return btrfs_super_compat_ro_flags(disk_super);
 else
  return btrfs_super_incompat_flags(disk_super);
}
