
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct watchdog_device {unsigned int timeout; } ;
struct armada_37xx_watchdog {unsigned int timeout; scalar_t__ clk_rate; } ;


 int CNTR_CTRL_PRESCALE_MIN ;
 int do_div (unsigned int,int ) ;
 struct armada_37xx_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int armada_37xx_wdt_set_timeout(struct watchdog_device *wdt,
           unsigned int timeout)
{
 struct armada_37xx_watchdog *dev = watchdog_get_drvdata(wdt);

 wdt->timeout = timeout;






 dev->timeout = (u64)dev->clk_rate * timeout;
 do_div(dev->timeout, CNTR_CTRL_PRESCALE_MIN);

 return 0;
}
