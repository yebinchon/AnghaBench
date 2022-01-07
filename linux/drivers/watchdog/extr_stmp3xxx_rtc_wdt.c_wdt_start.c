
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct stmp3xxx_wdt_pdata {int (* wdt_set_timeout ) (int ,int) ;} ;
struct device {int parent; } ;


 int WDOG_TICK_RATE ;
 struct stmp3xxx_wdt_pdata* dev_get_platdata (struct device*) ;
 int stub1 (int ,int) ;
 struct device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int wdt_start(struct watchdog_device *wdd)
{
 struct device *dev = watchdog_get_drvdata(wdd);
 struct stmp3xxx_wdt_pdata *pdata = dev_get_platdata(dev);

 pdata->wdt_set_timeout(dev->parent, wdd->timeout * WDOG_TICK_RATE);
 return 0;
}
