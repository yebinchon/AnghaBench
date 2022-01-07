
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_driver {int (* probe ) (struct gbphy_device*,struct gbphy_device_id const*) ;} ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int bundle; } ;
struct device {int driver; } ;


 int ENODEV ;
 int GB_GBPHY_AUTOSUSPEND_MS ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 struct gbphy_device_id* gbphy_dev_match_id (struct gbphy_device*,struct gbphy_driver*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int stub1 (struct gbphy_device*,struct gbphy_device_id const*) ;
 struct gbphy_device* to_gbphy_dev (struct device*) ;
 struct gbphy_driver* to_gbphy_driver (int ) ;

__attribute__((used)) static int gbphy_dev_probe(struct device *dev)
{
 struct gbphy_driver *gbphy_drv = to_gbphy_driver(dev->driver);
 struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
 const struct gbphy_device_id *id;
 int ret;

 id = gbphy_dev_match_id(gbphy_dev, gbphy_drv);
 if (!id)
  return -ENODEV;


 ret = gb_pm_runtime_get_sync(gbphy_dev->bundle);
 if (ret < 0)
  return ret;

 pm_runtime_set_autosuspend_delay(dev, GB_GBPHY_AUTOSUSPEND_MS);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);





 ret = gbphy_drv->probe(gbphy_dev, id);
 if (ret) {
  pm_runtime_disable(dev);
  pm_runtime_set_suspended(dev);
  pm_runtime_put_noidle(dev);
  pm_runtime_dont_use_autosuspend(dev);
 }

 gb_pm_runtime_put_autosuspend(gbphy_dev->bundle);

 return ret;
}
