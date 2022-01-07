
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kobject {int state_initialized; } ;
struct btrfs_fs_info {struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {struct kobject fsid_kobj; } ;
typedef enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;


 int ASSERT (int) ;
 int btrfs_feature_attr_group ;
 int get_features (struct btrfs_fs_info*,int) ;
 int* supported_feature_masks ;
 int sysfs_create_group (struct kobject*,int *) ;
 int sysfs_remove_group (struct kobject*,int *) ;

void btrfs_sysfs_feature_update(struct btrfs_fs_info *fs_info,
  u64 bit, enum btrfs_feature_set set)
{
 struct btrfs_fs_devices *fs_devs;
 struct kobject *fsid_kobj;
 u64 features;
 int ret;

 if (!fs_info)
  return;

 features = get_features(fs_info, set);
 ASSERT(bit & supported_feature_masks[set]);

 fs_devs = fs_info->fs_devices;
 fsid_kobj = &fs_devs->fsid_kobj;

 if (!fsid_kobj->state_initialized)
  return;





 sysfs_remove_group(fsid_kobj, &btrfs_feature_attr_group);
 ret = sysfs_create_group(fsid_kobj, &btrfs_feature_attr_group);
}
