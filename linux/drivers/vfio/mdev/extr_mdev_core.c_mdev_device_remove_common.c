
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_type {int dummy; } ;
struct mdev_parent {TYPE_1__* ops; int unreg_sem; } ;
struct mdev_device {int dev; struct mdev_parent* parent; int type_kobj; } ;
struct TYPE_2__ {int (* remove ) (struct mdev_device*) ;} ;


 int dev_err (int *,char*,int) ;
 int device_del (int *) ;
 int lockdep_assert_held (int *) ;
 int mdev_put_parent (struct mdev_parent*) ;
 int mdev_remove_sysfs_files (int *,struct mdev_type*) ;
 int put_device (int *) ;
 int stub1 (struct mdev_device*) ;
 struct mdev_type* to_mdev_type (int ) ;

__attribute__((used)) static void mdev_device_remove_common(struct mdev_device *mdev)
{
 struct mdev_parent *parent;
 struct mdev_type *type;
 int ret;

 type = to_mdev_type(mdev->type_kobj);
 mdev_remove_sysfs_files(&mdev->dev, type);
 device_del(&mdev->dev);
 parent = mdev->parent;
 lockdep_assert_held(&parent->unreg_sem);
 ret = parent->ops->remove(mdev);
 if (ret)
  dev_err(&mdev->dev, "Remove failed: err=%d\n", ret);


 put_device(&mdev->dev);
 mdev_put_parent(parent);
}
