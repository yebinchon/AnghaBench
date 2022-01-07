
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct btrfs_fs_info {struct kobject* space_info_kobj; struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {struct kobject fsid_kobj; } ;


 int ENOMEM ;
 int addrm_unknown_feature_attrs (struct btrfs_fs_info*,int) ;
 int allocation_attrs ;
 int btrfs_attrs ;
 int btrfs_debug_feature_attr_group ;
 int btrfs_feature_attr_group ;
 int btrfs_set_fs_info_ptr (struct btrfs_fs_info*) ;
 int btrfs_sysfs_add_device_link (struct btrfs_fs_devices*,int *) ;
 int btrfs_sysfs_remove_mounted (struct btrfs_fs_info*) ;
 int btrfs_sysfs_rm_device_link (struct btrfs_fs_devices*,int *) ;
 struct kobject* kobject_create_and_add (char*,struct kobject*) ;
 int sysfs_create_files (struct kobject*,int ) ;
 int sysfs_create_group (struct kobject*,int *) ;

int btrfs_sysfs_add_mounted(struct btrfs_fs_info *fs_info)
{
 int error;
 struct btrfs_fs_devices *fs_devs = fs_info->fs_devices;
 struct kobject *fsid_kobj = &fs_devs->fsid_kobj;

 btrfs_set_fs_info_ptr(fs_info);

 error = btrfs_sysfs_add_device_link(fs_devs, ((void*)0));
 if (error)
  return error;

 error = sysfs_create_files(fsid_kobj, btrfs_attrs);
 if (error) {
  btrfs_sysfs_rm_device_link(fs_devs, ((void*)0));
  return error;
 }

 error = sysfs_create_group(fsid_kobj,
       &btrfs_feature_attr_group);
 if (error)
  goto failure;
 error = addrm_unknown_feature_attrs(fs_info, 1);
 if (error)
  goto failure;

 fs_info->space_info_kobj = kobject_create_and_add("allocation",
        fsid_kobj);
 if (!fs_info->space_info_kobj) {
  error = -ENOMEM;
  goto failure;
 }

 error = sysfs_create_files(fs_info->space_info_kobj, allocation_attrs);
 if (error)
  goto failure;

 return 0;
failure:
 btrfs_sysfs_remove_mounted(fs_info);
 return error;
}
