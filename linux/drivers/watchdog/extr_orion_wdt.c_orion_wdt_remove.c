
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct orion_watchdog {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct watchdog_device* platform_get_drvdata (struct platform_device*) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int watchdog_unregister_device (struct watchdog_device*) ;

__attribute__((used)) static int orion_wdt_remove(struct platform_device *pdev)
{
 struct watchdog_device *wdt_dev = platform_get_drvdata(pdev);
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);

 watchdog_unregister_device(wdt_dev);
 clk_disable_unprepare(dev->clk);
 clk_put(dev->clk);
 return 0;
}
