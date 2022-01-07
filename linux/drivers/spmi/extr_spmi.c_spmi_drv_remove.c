
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (int ) ;
 int to_spmi_device (struct device*) ;
 struct spmi_driver* to_spmi_driver (int ) ;

__attribute__((used)) static int spmi_drv_remove(struct device *dev)
{
 const struct spmi_driver *sdrv = to_spmi_driver(dev->driver);

 pm_runtime_get_sync(dev);
 sdrv->remove(to_spmi_device(dev));
 pm_runtime_put_noidle(dev);

 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);
 return 0;
}
