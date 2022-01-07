
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct armada_37xx_watchdog {int timeout; int cpu_misc; } ;


 int CNTR_CTRL_MODE_HWSIG ;
 int CNTR_CTRL_MODE_ONESHOT ;
 int CNTR_CTRL_TRIG_SRC_PREV_CNTR ;
 int CNTR_ID_RETRIGGER ;
 int CNTR_ID_WDOG ;
 int WDT_TIMER_SELECT ;
 int WDT_TIMER_SELECT_VAL ;
 int counter_enable (struct armada_37xx_watchdog*,int ) ;
 int init_counter (struct armada_37xx_watchdog*,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int set_counter_value (struct armada_37xx_watchdog*,int ,int ) ;
 struct armada_37xx_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int armada_37xx_wdt_start(struct watchdog_device *wdt)
{
 struct armada_37xx_watchdog *dev = watchdog_get_drvdata(wdt);


 regmap_write(dev->cpu_misc, WDT_TIMER_SELECT, WDT_TIMER_SELECT_VAL);


 init_counter(dev, CNTR_ID_RETRIGGER, CNTR_CTRL_MODE_ONESHOT, 0);
 set_counter_value(dev, CNTR_ID_RETRIGGER, 0);


 init_counter(dev, CNTR_ID_WDOG, CNTR_CTRL_MODE_HWSIG,
       CNTR_CTRL_TRIG_SRC_PREV_CNTR);
 set_counter_value(dev, CNTR_ID_WDOG, dev->timeout);


 counter_enable(dev, CNTR_ID_WDOG);


 counter_enable(dev, CNTR_ID_RETRIGGER);

 return 0;
}
