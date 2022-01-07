
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned long timeout; } ;
struct cdns_wdt {unsigned long prescaler; unsigned short ctrl_clksel; int io_lock; scalar_t__ rst; int clk; } ;


 unsigned short CDNS_WDT_CCR_CRV_MASK ;
 int CDNS_WDT_CCR_OFFSET ;
 unsigned short CDNS_WDT_COUNTER_MAX ;
 unsigned long CDNS_WDT_COUNTER_VALUE_DIVISOR ;
 unsigned short CDNS_WDT_REGISTER_ACCESS_KEY ;
 unsigned int CDNS_WDT_RESTART_KEY ;
 int CDNS_WDT_RESTART_OFFSET ;
 unsigned int CDNS_WDT_ZMR_IRQEN_MASK ;
 int CDNS_WDT_ZMR_OFFSET ;
 unsigned int CDNS_WDT_ZMR_RSTEN_MASK ;
 unsigned int CDNS_WDT_ZMR_RSTLEN_16 ;
 unsigned int CDNS_WDT_ZMR_WDEN_MASK ;
 unsigned int CDNS_WDT_ZMR_ZKEY_VAL ;
 int cdns_wdt_writereg (struct cdns_wdt*,int ,unsigned int) ;
 unsigned long clk_get_rate (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cdns_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int cdns_wdt_start(struct watchdog_device *wdd)
{
 struct cdns_wdt *wdt = watchdog_get_drvdata(wdd);
 unsigned int data = 0;
 unsigned short count;
 unsigned long clock_f = clk_get_rate(wdt->clk);





 count = (wdd->timeout * (clock_f / wdt->prescaler)) /
   CDNS_WDT_COUNTER_VALUE_DIVISOR + 1;

 if (count > CDNS_WDT_COUNTER_MAX)
  count = CDNS_WDT_COUNTER_MAX;

 spin_lock(&wdt->io_lock);
 cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET,
     CDNS_WDT_ZMR_ZKEY_VAL);

 count = (count << 2) & CDNS_WDT_CCR_CRV_MASK;


 data = count | CDNS_WDT_REGISTER_ACCESS_KEY | wdt->ctrl_clksel;
 cdns_wdt_writereg(wdt, CDNS_WDT_CCR_OFFSET, data);
 data = CDNS_WDT_ZMR_WDEN_MASK | CDNS_WDT_ZMR_RSTLEN_16 |
        CDNS_WDT_ZMR_ZKEY_VAL;


 if (wdt->rst) {
  data |= CDNS_WDT_ZMR_RSTEN_MASK;
  data &= ~CDNS_WDT_ZMR_IRQEN_MASK;
 } else {
  data &= ~CDNS_WDT_ZMR_RSTEN_MASK;
  data |= CDNS_WDT_ZMR_IRQEN_MASK;
 }
 cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET, data);
 cdns_wdt_writereg(wdt, CDNS_WDT_RESTART_OFFSET,
     CDNS_WDT_RESTART_KEY);
 spin_unlock(&wdt->io_lock);

 return 0;
}
