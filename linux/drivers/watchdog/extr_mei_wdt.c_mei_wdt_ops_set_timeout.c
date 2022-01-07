
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct mei_wdt {unsigned int timeout; } ;


 struct mei_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mei_wdt_ops_set_timeout(struct watchdog_device *wdd,
       unsigned int timeout)
{

 struct mei_wdt *wdt = watchdog_get_drvdata(wdd);


 wdt->timeout = timeout;
 wdd->timeout = timeout;

 return 0;
}
