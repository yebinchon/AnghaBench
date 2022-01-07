
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx7ulp_wdt_device {int base; } ;


 int imx7ulp_wdt_enable (int ,int) ;
 struct imx7ulp_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int imx7ulp_wdt_stop(struct watchdog_device *wdog)
{
 struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);

 imx7ulp_wdt_enable(wdt->base, 0);

 return 0;
}
