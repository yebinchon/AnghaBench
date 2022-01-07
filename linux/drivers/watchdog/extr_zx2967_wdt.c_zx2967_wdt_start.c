
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx2967_wdt {int dummy; } ;
struct watchdog_device {int timeout; } ;


 int __zx2967_wdt_start (struct zx2967_wdt*) ;
 struct zx2967_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int zx2967_wdt_set_timeout (struct watchdog_device*,int ) ;

__attribute__((used)) static int zx2967_wdt_start(struct watchdog_device *wdd)
{
 struct zx2967_wdt *wdt = watchdog_get_drvdata(wdd);

 zx2967_wdt_set_timeout(wdd, wdd->timeout);
 __zx2967_wdt_start(wdt);

 return 0;
}
