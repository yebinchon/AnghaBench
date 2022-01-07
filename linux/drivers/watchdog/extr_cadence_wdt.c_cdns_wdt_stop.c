
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct cdns_wdt {int io_lock; } ;


 int CDNS_WDT_ZMR_OFFSET ;
 int CDNS_WDT_ZMR_WDEN_MASK ;
 int CDNS_WDT_ZMR_ZKEY_VAL ;
 int cdns_wdt_writereg (struct cdns_wdt*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cdns_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int cdns_wdt_stop(struct watchdog_device *wdd)
{
 struct cdns_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->io_lock);
 cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET,
     CDNS_WDT_ZMR_ZKEY_VAL & (~CDNS_WDT_ZMR_WDEN_MASK));
 spin_unlock(&wdt->io_lock);

 return 0;
}
