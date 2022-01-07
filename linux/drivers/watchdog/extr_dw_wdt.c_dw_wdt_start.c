
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct dw_wdt {int dummy; } ;


 int dw_wdt_arm_system_reset (struct dw_wdt*) ;
 int dw_wdt_set_timeout (struct watchdog_device*,int ) ;
 struct dw_wdt* to_dw_wdt (struct watchdog_device*) ;

__attribute__((used)) static int dw_wdt_start(struct watchdog_device *wdd)
{
 struct dw_wdt *dw_wdt = to_dw_wdt(wdd);

 dw_wdt_set_timeout(wdd, wdd->timeout);
 dw_wdt_arm_system_reset(dw_wdt);

 return 0;
}
