
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {unsigned int timeout; } ;
struct ts4800_wdt {int feed_val; } ;
struct TYPE_2__ {unsigned int timeout; int regval; } ;


 int MAX_TIMEOUT_INDEX ;
 TYPE_1__* ts4800_wdt_map ;
 struct ts4800_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int ts4800_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 struct ts4800_wdt *wdt = watchdog_get_drvdata(wdd);
 int i;

 for (i = 0; i < MAX_TIMEOUT_INDEX; i++) {
  if (ts4800_wdt_map[i].timeout >= timeout)
   break;
 }

 wdd->timeout = ts4800_wdt_map[i].timeout;
 wdt->feed_val = ts4800_wdt_map[i].regval;

 return 0;
}
