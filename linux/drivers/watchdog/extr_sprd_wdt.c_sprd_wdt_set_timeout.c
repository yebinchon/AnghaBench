
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int pretimeout; int timeout; } ;
struct sprd_wdt {int dummy; } ;


 int sprd_wdt_load_value (struct sprd_wdt*,int ,int ) ;
 struct sprd_wdt* to_sprd_wdt (struct watchdog_device*) ;

__attribute__((used)) static int sprd_wdt_set_timeout(struct watchdog_device *wdd,
    u32 timeout)
{
 struct sprd_wdt *wdt = to_sprd_wdt(wdd);

 if (timeout == wdd->timeout)
  return 0;

 wdd->timeout = timeout;

 return sprd_wdt_load_value(wdt, timeout, wdd->pretimeout);
}
