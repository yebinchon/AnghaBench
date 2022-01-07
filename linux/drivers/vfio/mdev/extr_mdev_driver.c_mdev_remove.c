
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_driver {int (* remove ) (struct device*) ;} ;
struct mdev_device {int dummy; } ;
struct device {int driver; } ;


 int mdev_detach_iommu (struct mdev_device*) ;
 int stub1 (struct device*) ;
 struct mdev_device* to_mdev_device (struct device*) ;
 struct mdev_driver* to_mdev_driver (int ) ;

__attribute__((used)) static int mdev_remove(struct device *dev)
{
 struct mdev_driver *drv = to_mdev_driver(dev->driver);
 struct mdev_device *mdev = to_mdev_device(dev);

 if (drv && drv->remove)
  drv->remove(dev);

 mdev_detach_iommu(mdev);

 return 0;
}
