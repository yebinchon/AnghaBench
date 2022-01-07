
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int PRCMU_WDOG_ALL ;
 int prcmu_load_a9wdog (int ,unsigned int) ;
 int ux500_wdt_start (struct watchdog_device*) ;
 int ux500_wdt_stop (struct watchdog_device*) ;

__attribute__((used)) static int ux500_wdt_set_timeout(struct watchdog_device *wdd,
     unsigned int timeout)
{
 ux500_wdt_stop(wdd);
 prcmu_load_a9wdog(PRCMU_WDOG_ALL, timeout * 1000);
 ux500_wdt_start(wdd);

 return 0;
}
