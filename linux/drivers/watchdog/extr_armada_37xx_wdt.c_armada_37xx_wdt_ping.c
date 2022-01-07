
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct armada_37xx_watchdog {int dummy; } ;


 int CNTR_ID_RETRIGGER ;
 int counter_disable (struct armada_37xx_watchdog*,int ) ;
 int counter_enable (struct armada_37xx_watchdog*,int ) ;
 struct armada_37xx_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int armada_37xx_wdt_ping(struct watchdog_device *wdt)
{
 struct armada_37xx_watchdog *dev = watchdog_get_drvdata(wdt);


 counter_disable(dev, CNTR_ID_RETRIGGER);
 counter_enable(dev, CNTR_ID_RETRIGGER);

 return 0;
}
