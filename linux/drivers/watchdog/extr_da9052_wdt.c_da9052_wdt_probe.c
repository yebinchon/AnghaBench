
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {struct device* parent; int * ops; int * info; int timeout; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct da9052_wdt_data {struct watchdog_device wdt; struct da9052* da9052; } ;
struct da9052 {int dummy; } ;


 int DA9052_CONTROLD_TWDSCALE ;
 int DA9052_CONTROL_D_REG ;
 int DA9052_DEF_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int da9052_reg_update (struct da9052*,int ,int ,int ) ;
 int da9052_wdt_info ;
 int da9052_wdt_ops ;
 int dev_err (struct device*,char*,int) ;
 struct da9052* dev_get_drvdata (int ) ;
 struct da9052_wdt_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct da9052_wdt_data*) ;

__attribute__((used)) static int da9052_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9052 *da9052 = dev_get_drvdata(dev->parent);
 struct da9052_wdt_data *driver_data;
 struct watchdog_device *da9052_wdt;
 int ret;

 driver_data = devm_kzalloc(dev, sizeof(*driver_data), GFP_KERNEL);
 if (!driver_data)
  return -ENOMEM;
 driver_data->da9052 = da9052;

 da9052_wdt = &driver_data->wdt;

 da9052_wdt->timeout = DA9052_DEF_TIMEOUT;
 da9052_wdt->info = &da9052_wdt_info;
 da9052_wdt->ops = &da9052_wdt_ops;
 da9052_wdt->parent = dev;
 watchdog_set_drvdata(da9052_wdt, driver_data);

 ret = da9052_reg_update(da9052, DA9052_CONTROL_D_REG,
    DA9052_CONTROLD_TWDSCALE, 0);
 if (ret < 0) {
  dev_err(dev, "Failed to disable watchdog bits, %d\n", ret);
  return ret;
 }

 return devm_watchdog_register_device(dev, &driver_data->wdt);
}
