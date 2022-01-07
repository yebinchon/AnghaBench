
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_driver {int (* probe ) (struct siox_device*) ;} ;
struct siox_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct siox_device*) ;
 struct siox_device* to_siox_device (struct device*) ;
 struct siox_driver* to_siox_driver (int ) ;

__attribute__((used)) static int siox_driver_probe(struct device *dev)
{
 struct siox_driver *sdriver = to_siox_driver(dev->driver);
 struct siox_device *sdevice = to_siox_device(dev);
 int ret;

 ret = sdriver->probe(sdevice);
 return ret;
}
