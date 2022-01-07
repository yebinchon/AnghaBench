
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_driver {int (* remove ) (struct umc_dev*) ;} ;
struct umc_dev {int dummy; } ;
struct device {int driver; } ;


 int put_device (struct device*) ;
 int stub1 (struct umc_dev*) ;
 struct umc_dev* to_umc_dev (struct device*) ;
 struct umc_driver* to_umc_driver (int ) ;

__attribute__((used)) static int umc_device_remove(struct device *dev)
{
 struct umc_dev *umc;
 struct umc_driver *umc_driver;

 umc_driver = to_umc_driver(dev->driver);
 umc = to_umc_dev(dev);

 umc_driver->remove(umc);
 put_device(dev);
 return 0;
}
