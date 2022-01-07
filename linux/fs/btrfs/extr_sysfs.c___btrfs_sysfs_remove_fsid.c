
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state_initialized; } ;
struct btrfs_fs_devices {int kobj_unregister; TYPE_1__ fsid_kobj; TYPE_1__* device_dir_kobj; } ;


 int kobject_del (TYPE_1__*) ;
 int kobject_put (TYPE_1__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void __btrfs_sysfs_remove_fsid(struct btrfs_fs_devices *fs_devs)
{
 if (fs_devs->device_dir_kobj) {
  kobject_del(fs_devs->device_dir_kobj);
  kobject_put(fs_devs->device_dir_kobj);
  fs_devs->device_dir_kobj = ((void*)0);
 }

 if (fs_devs->fsid_kobj.state_initialized) {
  kobject_del(&fs_devs->fsid_kobj);
  kobject_put(&fs_devs->fsid_kobj);
  wait_for_completion(&fs_devs->kobj_unregister);
 }
}
