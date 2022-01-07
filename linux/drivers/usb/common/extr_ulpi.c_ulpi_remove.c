
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpi_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int stub1 (int ) ;
 int to_ulpi_dev (struct device*) ;
 struct ulpi_driver* to_ulpi_driver (int ) ;

__attribute__((used)) static int ulpi_remove(struct device *dev)
{
 struct ulpi_driver *drv = to_ulpi_driver(dev->driver);

 if (drv->remove)
  drv->remove(to_ulpi_dev(dev));

 return 0;
}
