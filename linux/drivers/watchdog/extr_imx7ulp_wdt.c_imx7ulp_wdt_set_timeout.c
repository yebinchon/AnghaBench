
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct imx7ulp_wdt_device {scalar_t__ base; } ;


 unsigned int UNLOCK ;
 unsigned int WDOG_CLOCK_RATE ;
 scalar_t__ WDOG_CNT ;
 scalar_t__ WDOG_TOVAL ;
 struct imx7ulp_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int imx7ulp_wdt_set_timeout(struct watchdog_device *wdog,
       unsigned int timeout)
{
 struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
 u32 val = WDOG_CLOCK_RATE * timeout;

 writel(UNLOCK, wdt->base + WDOG_CNT);
 writel(val, wdt->base + WDOG_TOVAL);

 wdog->timeout = timeout;

 return 0;
}
