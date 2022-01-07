
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_parent {TYPE_1__* ops; } ;
struct mdev_device {struct mdev_parent* parent; } ;
struct TYPE_2__ {int (* open ) (struct mdev_device*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int THIS_MODULE ;
 int module_put (int ) ;
 int stub1 (struct mdev_device*) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vfio_mdev_open(void *device_data)
{
 struct mdev_device *mdev = device_data;
 struct mdev_parent *parent = mdev->parent;
 int ret;

 if (unlikely(!parent->ops->open))
  return -EINVAL;

 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 ret = parent->ops->open(mdev);
 if (ret)
  module_put(THIS_MODULE);

 return ret;
}
