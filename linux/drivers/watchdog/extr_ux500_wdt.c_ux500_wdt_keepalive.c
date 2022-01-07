
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int PRCMU_WDOG_ALL ;
 int prcmu_kick_a9wdog (int ) ;

__attribute__((used)) static int ux500_wdt_keepalive(struct watchdog_device *wdd)
{
 return prcmu_kick_a9wdog(PRCMU_WDOG_ALL);
}
