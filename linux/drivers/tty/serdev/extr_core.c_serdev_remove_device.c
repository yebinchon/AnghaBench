
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct device {int * type; } ;


 int serdev_device_remove (struct serdev_device*) ;
 int serdev_device_type ;
 struct serdev_device* to_serdev_device (struct device*) ;

__attribute__((used)) static int serdev_remove_device(struct device *dev, void *data)
{
 struct serdev_device *serdev = to_serdev_device(dev);
 if (dev->type == &serdev_device_type)
  serdev_device_remove(serdev);
 return 0;
}
