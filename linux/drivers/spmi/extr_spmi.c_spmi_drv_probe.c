
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_driver {int (* probe ) (struct spmi_device*) ;} ;
struct spmi_device {int dummy; } ;
struct device {int driver; } ;


 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (struct spmi_device*) ;
 struct spmi_device* to_spmi_device (struct device*) ;
 struct spmi_driver* to_spmi_driver (int ) ;

__attribute__((used)) static int spmi_drv_probe(struct device *dev)
{
 const struct spmi_driver *sdrv = to_spmi_driver(dev->driver);
 struct spmi_device *sdev = to_spmi_device(dev);
 int err;

 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 err = sdrv->probe(sdev);
 if (err)
  goto fail_probe;

 return 0;

fail_probe:
 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);
 return err;
}
