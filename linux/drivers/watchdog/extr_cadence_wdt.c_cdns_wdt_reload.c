
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct cdns_wdt {int io_lock; } ;


 int CDNS_WDT_RESTART_KEY ;
 int CDNS_WDT_RESTART_OFFSET ;
 int cdns_wdt_writereg (struct cdns_wdt*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cdns_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int cdns_wdt_reload(struct watchdog_device *wdd)
{
 struct cdns_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->io_lock);
 cdns_wdt_writereg(wdt, CDNS_WDT_RESTART_OFFSET,
     CDNS_WDT_RESTART_KEY);
 spin_unlock(&wdt->io_lock);

 return 0;
}
