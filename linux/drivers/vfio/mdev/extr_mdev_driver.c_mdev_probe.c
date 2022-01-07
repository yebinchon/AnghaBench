
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_driver {int (* probe ) (struct device*) ;} ;
struct mdev_device {int dummy; } ;
struct device {int driver; } ;


 int mdev_attach_iommu (struct mdev_device*) ;
 int mdev_detach_iommu (struct mdev_device*) ;
 int stub1 (struct device*) ;
 struct mdev_device* to_mdev_device (struct device*) ;
 struct mdev_driver* to_mdev_driver (int ) ;

__attribute__((used)) static int mdev_probe(struct device *dev)
{
 struct mdev_driver *drv = to_mdev_driver(dev->driver);
 struct mdev_device *mdev = to_mdev_device(dev);
 int ret;

 ret = mdev_attach_iommu(mdev);
 if (ret)
  return ret;

 if (drv && drv->probe) {
  ret = drv->probe(dev);
  if (ret)
   mdev_detach_iommu(mdev);
 }

 return ret;
}
