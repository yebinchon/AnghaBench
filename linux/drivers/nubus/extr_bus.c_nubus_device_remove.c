
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_driver {int (* remove ) (int ) ;} ;
struct device {scalar_t__ driver; } ;


 int ENODEV ;
 int stub1 (int ) ;
 int to_nubus_board (struct device*) ;
 struct nubus_driver* to_nubus_driver (scalar_t__) ;

__attribute__((used)) static int nubus_device_remove(struct device *dev)
{
 struct nubus_driver *ndrv = to_nubus_driver(dev->driver);
 int err = -ENODEV;

 if (dev->driver && ndrv->remove)
  err = ndrv->remove(to_nubus_board(dev));
 return err;
}
