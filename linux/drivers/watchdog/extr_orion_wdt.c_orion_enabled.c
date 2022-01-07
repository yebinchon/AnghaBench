
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orion_watchdog {TYPE_1__* data; scalar_t__ reg; scalar_t__ rstout; } ;
struct TYPE_2__ {int rstout_enable_bit; int wdt_enable_bit; } ;


 scalar_t__ TIMER_CTRL ;
 int readl (scalar_t__) ;

__attribute__((used)) static int orion_enabled(struct orion_watchdog *dev)
{
 bool enabled, running;

 enabled = readl(dev->rstout) & dev->data->rstout_enable_bit;
 running = readl(dev->reg + TIMER_CTRL) & dev->data->wdt_enable_bit;

 return enabled && running;
}
