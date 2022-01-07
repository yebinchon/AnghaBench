
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_wdt {int clk; int rst; int wdd; } ;


 int clk_disable_unprepare (int ) ;
 struct dw_wdt* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int dw_wdt_drv_remove(struct platform_device *pdev)
{
 struct dw_wdt *dw_wdt = platform_get_drvdata(pdev);

 watchdog_unregister_device(&dw_wdt->wdd);
 reset_control_assert(dw_wdt->rst);
 clk_disable_unprepare(dw_wdt->clk);

 return 0;
}
