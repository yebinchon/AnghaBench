
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; int pretimeout; int min_timeout; } ;
struct sprd_wdt {int dummy; } ;


 int EINVAL ;
 int sprd_wdt_load_value (struct sprd_wdt*,int ,int ) ;
 struct sprd_wdt* to_sprd_wdt (struct watchdog_device*) ;

__attribute__((used)) static int sprd_wdt_set_pretimeout(struct watchdog_device *wdd,
       u32 new_pretimeout)
{
 struct sprd_wdt *wdt = to_sprd_wdt(wdd);

 if (new_pretimeout < wdd->min_timeout)
  return -EINVAL;

 wdd->pretimeout = new_pretimeout;

 return sprd_wdt_load_value(wdt, wdd->timeout, new_pretimeout);
}
