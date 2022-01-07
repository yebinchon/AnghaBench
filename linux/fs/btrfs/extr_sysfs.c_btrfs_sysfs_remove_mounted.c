
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_fs_info {TYPE_1__* fs_devices; int * space_info_kobj; } ;
struct TYPE_2__ {int fsid_kobj; } ;


 int addrm_unknown_feature_attrs (struct btrfs_fs_info*,int) ;
 int allocation_attrs ;
 int btrfs_attrs ;
 int btrfs_feature_attr_group ;
 int btrfs_reset_fs_info_ptr (struct btrfs_fs_info*) ;
 int btrfs_sysfs_rm_device_link (TYPE_1__*,int *) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int sysfs_remove_files (int *,int ) ;
 int sysfs_remove_group (int *,int *) ;

void btrfs_sysfs_remove_mounted(struct btrfs_fs_info *fs_info)
{
 btrfs_reset_fs_info_ptr(fs_info);

 if (fs_info->space_info_kobj) {
  sysfs_remove_files(fs_info->space_info_kobj, allocation_attrs);
  kobject_del(fs_info->space_info_kobj);
  kobject_put(fs_info->space_info_kobj);
 }
 addrm_unknown_feature_attrs(fs_info, 0);
 sysfs_remove_group(&fs_info->fs_devices->fsid_kobj, &btrfs_feature_attr_group);
 sysfs_remove_files(&fs_info->fs_devices->fsid_kobj, btrfs_attrs);
 btrfs_sysfs_rm_device_link(fs_info->fs_devices, ((void*)0));
}
