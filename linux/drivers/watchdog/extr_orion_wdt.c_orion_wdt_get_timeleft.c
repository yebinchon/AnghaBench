
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct orion_watchdog {unsigned int clk_rate; TYPE_1__* data; scalar_t__ reg; } ;
struct TYPE_2__ {scalar_t__ wdt_counter_offset; } ;


 unsigned int readl (scalar_t__) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int orion_wdt_get_timeleft(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);
 return readl(dev->reg + dev->data->wdt_counter_offset) / dev->clk_rate;
}
