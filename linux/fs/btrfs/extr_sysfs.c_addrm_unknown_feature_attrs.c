
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct btrfs_fs_info {TYPE_2__* fs_devices; } ;
struct attribute {int dummy; } ;
struct TYPE_3__ {struct attribute attr; } ;
struct btrfs_feature_attr {TYPE_1__ kobj_attr; } ;
struct attribute_group {char* name; struct attribute** attrs; } ;
struct TYPE_4__ {int fsid_kobj; } ;


 int FEAT_MAX ;
 int NUM_FEATURE_BITS ;
 struct btrfs_feature_attr** btrfs_feature_attrs ;
 unsigned long long get_features (struct btrfs_fs_info*,int) ;
 unsigned long long* supported_feature_masks ;
 int sysfs_merge_group (int *,struct attribute_group*) ;
 int sysfs_unmerge_group (int *,struct attribute_group*) ;

__attribute__((used)) static int addrm_unknown_feature_attrs(struct btrfs_fs_info *fs_info, bool add)
{
 int set;

 for (set = 0; set < FEAT_MAX; set++) {
  int i;
  struct attribute *attrs[2];
  struct attribute_group agroup = {
   .name = "features",
   .attrs = attrs,
  };
  u64 features = get_features(fs_info, set);
  features &= ~supported_feature_masks[set];

  if (!features)
   continue;

  attrs[1] = ((void*)0);
  for (i = 0; i < NUM_FEATURE_BITS; i++) {
   struct btrfs_feature_attr *fa;

   if (!(features & (1ULL << i)))
    continue;

   fa = &btrfs_feature_attrs[set][i];
   attrs[0] = &fa->kobj_attr.attr;
   if (add) {
    int ret;
    ret = sysfs_merge_group(&fs_info->fs_devices->fsid_kobj,
       &agroup);
    if (ret)
     return ret;
   } else
    sysfs_unmerge_group(&fs_info->fs_devices->fsid_kobj,
          &agroup);
  }

 }
 return 0;
}
