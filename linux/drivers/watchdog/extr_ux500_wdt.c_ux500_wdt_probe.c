
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ux500_wdt_data {scalar_t__ timeout; scalar_t__ has_28_bits_resolution; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; int max_timeout; } ;


 int PRCMU_WDOG_ALL ;
 int PRCMU_WDOG_CPU1 ;
 int WATCHDOG_MAX28 ;
 struct ux500_wdt_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int nowayout ;
 int prcmu_config_a9wdog (int ,int) ;
 int prcmu_load_a9wdog (int ,int) ;
 int timeout ;
 TYPE_1__ ux500_wdt ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int ux500_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret;
 struct ux500_wdt_data *pdata = dev_get_platdata(dev);

 if (pdata) {
  if (pdata->timeout > 0)
   timeout = pdata->timeout;
  if (pdata->has_28_bits_resolution)
   ux500_wdt.max_timeout = WATCHDOG_MAX28;
 }

 ux500_wdt.parent = dev;
 watchdog_set_nowayout(&ux500_wdt, nowayout);


 prcmu_config_a9wdog(PRCMU_WDOG_CPU1, 0);


 prcmu_load_a9wdog(PRCMU_WDOG_ALL, timeout * 1000);

 ret = devm_watchdog_register_device(dev, &ux500_wdt);
 if (ret)
  return ret;

 dev_info(dev, "initialized\n");

 return 0;
}
