
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_type {int kobj; int * devices_kobj; TYPE_1__* group; } ;
struct attribute {int dummy; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {scalar_t__ attrs; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 TYPE_2__ mdev_type_attr_create ;
 int sysfs_remove_file (int *,int *) ;
 int sysfs_remove_files (int *,struct attribute const**) ;

__attribute__((used)) static void remove_mdev_supported_type(struct mdev_type *type)
{
 sysfs_remove_files(&type->kobj,
      (const struct attribute **)type->group->attrs);
 kobject_put(type->devices_kobj);
 sysfs_remove_file(&type->kobj, &mdev_type_attr_create.attr);
 kobject_del(&type->kobj);
 kobject_put(&type->kobj);
}
