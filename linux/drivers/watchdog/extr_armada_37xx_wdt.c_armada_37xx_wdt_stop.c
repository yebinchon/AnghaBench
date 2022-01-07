
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct armada_37xx_watchdog {int cpu_misc; } ;


 int CNTR_ID_RETRIGGER ;
 int CNTR_ID_WDOG ;
 int WDT_TIMER_SELECT ;
 int counter_disable (struct armada_37xx_watchdog*,int ) ;
 int regmap_write (int ,int ,int ) ;
 struct armada_37xx_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int armada_37xx_wdt_stop(struct watchdog_device *wdt)
{
 struct armada_37xx_watchdog *dev = watchdog_get_drvdata(wdt);

 counter_disable(dev, CNTR_ID_WDOG);
 counter_disable(dev, CNTR_ID_RETRIGGER);
 regmap_write(dev->cpu_misc, WDT_TIMER_SELECT, 0);

 return 0;
}
