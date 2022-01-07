
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct watchdog_device {int dummy; } ;
struct armada_37xx_watchdog {int clk_rate; } ;


 unsigned int CNTR_CTRL_PRESCALE_MIN ;
 int CNTR_ID_WDOG ;
 int do_div (unsigned int,int ) ;
 unsigned int get_counter_value (struct armada_37xx_watchdog*,int ) ;
 struct armada_37xx_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int armada_37xx_wdt_get_timeleft(struct watchdog_device *wdt)
{
 struct armada_37xx_watchdog *dev = watchdog_get_drvdata(wdt);
 u64 res;

 res = get_counter_value(dev, CNTR_ID_WDOG) * CNTR_CTRL_PRESCALE_MIN;
 do_div(res, dev->clk_rate);

 return res;
}
