
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orion_watchdog {TYPE_1__* data; scalar_t__ reg; scalar_t__ rstout; scalar_t__ rstout_mask; } ;
struct TYPE_2__ {int rstout_mask_bit; int rstout_enable_bit; int wdt_enable_bit; } ;


 scalar_t__ TIMER_CTRL ;
 int readl (scalar_t__) ;

__attribute__((used)) static int armada375_enabled(struct orion_watchdog *dev)
{
 bool masked, enabled, running;

 masked = readl(dev->rstout_mask) & dev->data->rstout_mask_bit;
 enabled = readl(dev->rstout) & dev->data->rstout_enable_bit;
 running = readl(dev->reg + TIMER_CTRL) & dev->data->wdt_enable_bit;

 return !masked && enabled && running;
}
