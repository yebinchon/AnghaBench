
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_3__ {int kset; } ;
struct btrfs_fs_devices {TYPE_1__ fsid_kobj; int fsid; int kobj_unregister; } ;


 int btrfs_kset ;
 int btrfs_ktype ;
 int init_completion (int *) ;
 int kobject_init_and_add (TYPE_1__*,int *,struct kobject*,char*,int ) ;
 int kobject_put (TYPE_1__*) ;

int btrfs_sysfs_add_fsid(struct btrfs_fs_devices *fs_devs,
    struct kobject *parent)
{
 int error;

 init_completion(&fs_devs->kobj_unregister);
 fs_devs->fsid_kobj.kset = btrfs_kset;
 error = kobject_init_and_add(&fs_devs->fsid_kobj,
    &btrfs_ktype, parent, "%pU", fs_devs->fsid);
 if (error) {
  kobject_put(&fs_devs->fsid_kobj);
  return error;
 }

 return 0;
}
