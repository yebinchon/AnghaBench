
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlynq_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int stub1 (int ) ;
 int to_vlynq_device (struct device*) ;
 struct vlynq_driver* to_vlynq_driver (int ) ;

__attribute__((used)) static int vlynq_device_remove(struct device *dev)
{
 struct vlynq_driver *drv = to_vlynq_driver(dev->driver);

 if (drv->remove)
  drv->remove(to_vlynq_device(dev));

 return 0;
}
