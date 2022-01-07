
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_parent {int mdev_types_kset; TYPE_1__* ops; TYPE_2__* dev; int type_list; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int dev_attr_groups; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int add_mdev_supported_type_groups (struct mdev_parent*) ;
 int kset_create_and_add (char*,int *,int *) ;
 int kset_unregister (int ) ;
 int sysfs_create_groups (int *,int ) ;
 int sysfs_remove_groups (int *,int ) ;

int parent_create_sysfs_files(struct mdev_parent *parent)
{
 int ret;

 parent->mdev_types_kset = kset_create_and_add("mdev_supported_types",
            ((void*)0), &parent->dev->kobj);

 if (!parent->mdev_types_kset)
  return -ENOMEM;

 INIT_LIST_HEAD(&parent->type_list);

 ret = sysfs_create_groups(&parent->dev->kobj,
      parent->ops->dev_attr_groups);
 if (ret)
  goto create_err;

 ret = add_mdev_supported_type_groups(parent);
 if (ret)
  sysfs_remove_groups(&parent->dev->kobj,
        parent->ops->dev_attr_groups);
 else
  return ret;

create_err:
 kset_unregister(parent->mdev_types_kset);
 return ret;
}
