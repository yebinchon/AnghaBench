
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_parent {TYPE_1__* ops; } ;
struct mdev_device {struct mdev_parent* parent; } ;
struct TYPE_2__ {int (* release ) (struct mdev_device*) ;} ;


 int THIS_MODULE ;
 scalar_t__ likely (int (*) (struct mdev_device*)) ;
 int module_put (int ) ;
 int stub1 (struct mdev_device*) ;

__attribute__((used)) static void vfio_mdev_release(void *device_data)
{
 struct mdev_device *mdev = device_data;
 struct mdev_parent *parent = mdev->parent;

 if (likely(parent->ops->release))
  parent->ops->release(mdev);

 module_put(THIS_MODULE);
}
