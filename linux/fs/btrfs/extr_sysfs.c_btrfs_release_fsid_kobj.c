
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct btrfs_fs_devices {int kobj_unregister; int fsid_kobj; } ;


 int complete (int *) ;
 int memset (int *,int ,int) ;
 struct btrfs_fs_devices* to_fs_devs (struct kobject*) ;

__attribute__((used)) static void btrfs_release_fsid_kobj(struct kobject *kobj)
{
 struct btrfs_fs_devices *fs_devs = to_fs_devs(kobj);

 memset(&fs_devs->fsid_kobj, 0, sizeof(struct kobject));
 complete(&fs_devs->kobj_unregister);
}
