
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_driver {int (* remove ) (struct slim_device*) ;} ;
struct slim_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct slim_device*) ;
 struct slim_device* to_slim_device (struct device*) ;
 struct slim_driver* to_slim_driver (scalar_t__) ;

__attribute__((used)) static int slim_device_remove(struct device *dev)
{
 struct slim_device *sbdev = to_slim_device(dev);
 struct slim_driver *sbdrv;

 if (dev->driver) {
  sbdrv = to_slim_driver(dev->driver);
  if (sbdrv->remove)
   sbdrv->remove(sbdev);
 }

 return 0;
}
