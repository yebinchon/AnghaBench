
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dummy; } ;
struct device {int * bus; } ;


 int RIO_DEVICE_SHUTDOWN ;
 int rio_bus_type ;
 int rio_del_device (struct rio_dev*,int ) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static int rio_mport_cleanup_callback(struct device *dev, void *data)
{
 struct rio_dev *rdev = to_rio_dev(dev);

 if (dev->bus == &rio_bus_type)
  rio_del_device(rdev, RIO_DEVICE_SHUTDOWN);
 return 0;
}
