
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct imx7ulp_wdt_device {scalar_t__ base; } ;


 int REFRESH ;
 scalar_t__ WDOG_CNT ;
 struct imx7ulp_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int imx7ulp_wdt_ping(struct watchdog_device *wdog)
{
 struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);

 writel(REFRESH, wdt->base + WDOG_CNT);

 return 0;
}
