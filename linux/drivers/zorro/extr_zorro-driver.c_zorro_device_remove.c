
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_driver {int (* remove ) (struct zorro_dev*) ;} ;
struct zorro_dev {int * driver; } ;
struct device {int driver; } ;


 int stub1 (struct zorro_dev*) ;
 struct zorro_dev* to_zorro_dev (struct device*) ;
 struct zorro_driver* to_zorro_driver (int ) ;

__attribute__((used)) static int zorro_device_remove(struct device *dev)
{
 struct zorro_dev *z = to_zorro_dev(dev);
 struct zorro_driver *drv = to_zorro_driver(dev->driver);

 if (drv) {
  if (drv->remove)
   drv->remove(z);
  z->driver = ((void*)0);
 }
 return 0;
}
