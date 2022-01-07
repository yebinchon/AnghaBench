
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_space_info {int kobj; int flags; } ;
struct btrfs_fs_info {int space_info_kobj; } ;


 int alloc_name (int ) ;
 int kobject_init_and_add (int *,int *,int ,char*,int ) ;
 int kobject_put (int *) ;
 int space_info_ktype ;

int btrfs_sysfs_add_space_info_type(struct btrfs_fs_info *fs_info,
        struct btrfs_space_info *space_info)
{
 int ret;

 ret = kobject_init_and_add(&space_info->kobj, &space_info_ktype,
       fs_info->space_info_kobj, "%s",
       alloc_name(space_info->flags));
 if (ret) {
  kobject_put(&space_info->kobj);
  return ret;
 }

 return 0;
}
