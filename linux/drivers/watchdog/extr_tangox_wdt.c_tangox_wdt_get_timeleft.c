
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct tangox_wdt_device {int clk_rate; scalar_t__ base; } ;


 scalar_t__ WD_COUNTER ;
 int readl (scalar_t__) ;
 struct tangox_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int tangox_wdt_get_timeleft(struct watchdog_device *wdt)
{
 struct tangox_wdt_device *dev = watchdog_get_drvdata(wdt);
 u32 count;

 count = readl(dev->base + WD_COUNTER);

 if (!count)
  return 0;

 return (count - 1) / dev->clk_rate;
}
