
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_driver {int (* remove ) (struct vme_dev*) ;} ;
struct vme_dev {int dummy; } ;
struct device {struct vme_driver* platform_data; } ;


 int ENODEV ;
 struct vme_dev* dev_to_vme_dev (struct device*) ;
 int stub1 (struct vme_dev*) ;

__attribute__((used)) static int vme_bus_remove(struct device *dev)
{
 struct vme_driver *driver;
 struct vme_dev *vdev = dev_to_vme_dev(dev);

 driver = dev->platform_data;
 if (driver->remove)
  return driver->remove(vdev);

 return -ENODEV;
}
