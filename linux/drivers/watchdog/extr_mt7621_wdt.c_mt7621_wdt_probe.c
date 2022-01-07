
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int status; int max_timeout; int bootstatus; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WDOG_HW_RUNNING ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_reset_control_get_exclusive (struct device*,int *) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int mt7621_wdt_base ;
 int mt7621_wdt_bootcause () ;
 TYPE_1__ mt7621_wdt_dev ;
 scalar_t__ mt7621_wdt_is_running (TYPE_1__*) ;
 int mt7621_wdt_reset ;
 int mt7621_wdt_start (TYPE_1__*) ;
 int mt7621_wdt_stop (TYPE_1__*) ;
 int nowayout ;
 int reset_control_deassert (int ) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int mt7621_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 mt7621_wdt_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mt7621_wdt_base))
  return PTR_ERR(mt7621_wdt_base);

 mt7621_wdt_reset = devm_reset_control_get_exclusive(dev, ((void*)0));
 if (!IS_ERR(mt7621_wdt_reset))
  reset_control_deassert(mt7621_wdt_reset);

 mt7621_wdt_dev.bootstatus = mt7621_wdt_bootcause();

 watchdog_init_timeout(&mt7621_wdt_dev, mt7621_wdt_dev.max_timeout,
         dev);
 watchdog_set_nowayout(&mt7621_wdt_dev, nowayout);
 if (mt7621_wdt_is_running(&mt7621_wdt_dev)) {
  mt7621_wdt_stop(&mt7621_wdt_dev);
  mt7621_wdt_start(&mt7621_wdt_dev);
  set_bit(WDOG_HW_RUNNING, &mt7621_wdt_dev.status);
 }

 return devm_watchdog_register_device(dev, &mt7621_wdt_dev);
}
