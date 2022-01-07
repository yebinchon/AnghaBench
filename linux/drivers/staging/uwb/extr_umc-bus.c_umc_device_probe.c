
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_driver {int (* probe ) (struct umc_dev*) ;} ;
struct umc_dev {int dummy; } ;
struct device {int parent; int driver; } ;


 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int stub1 (struct umc_dev*) ;
 struct umc_dev* to_umc_dev (struct device*) ;
 struct umc_driver* to_umc_driver (int ) ;
 int umc_bus_rescan (int ) ;

__attribute__((used)) static int umc_device_probe(struct device *dev)
{
 struct umc_dev *umc;
 struct umc_driver *umc_driver;
 int err;

 umc_driver = to_umc_driver(dev->driver);
 umc = to_umc_dev(dev);

 get_device(dev);
 err = umc_driver->probe(umc);
 if (err)
  put_device(dev);
 else
  umc_bus_rescan(dev->parent);

 return err;
}
