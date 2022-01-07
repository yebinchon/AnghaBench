
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_devices {scalar_t__ device_dir_kobj; int fsid_kobj; } ;


 int ENOMEM ;
 scalar_t__ kobject_create_and_add (char*,int *) ;

int btrfs_sysfs_add_device(struct btrfs_fs_devices *fs_devs)
{
 if (!fs_devs->device_dir_kobj)
  fs_devs->device_dir_kobj = kobject_create_and_add("devices",
      &fs_devs->fsid_kobj);

 if (!fs_devs->device_dir_kobj)
  return -ENOMEM;

 return 0;
}
