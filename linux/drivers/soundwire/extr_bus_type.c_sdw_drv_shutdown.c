
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
struct sdw_driver {int (* shutdown ) (struct sdw_slave*) ;} ;
struct device {int driver; } ;


 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 struct sdw_driver* drv_to_sdw_driver (int ) ;
 int stub1 (struct sdw_slave*) ;

__attribute__((used)) static void sdw_drv_shutdown(struct device *dev)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);
 struct sdw_driver *drv = drv_to_sdw_driver(dev->driver);

 if (drv->shutdown)
  drv->shutdown(slave);
}
