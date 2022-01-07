
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int timeout; int pretimeout; } ;
struct TYPE_5__ {TYPE_1__* info; } ;
struct orion_watchdog {int clk_rate; TYPE_3__* data; scalar_t__ rstout_mask; scalar_t__ rstout; scalar_t__ reg; TYPE_2__ wdt; } ;
struct TYPE_6__ {int wdt_enable_bit; int rstout_enable_bit; int rstout_mask_bit; scalar_t__ wdt_counter_offset; } ;
struct TYPE_4__ {int options; } ;


 int TIMER1_ENABLE_BIT ;
 scalar_t__ TIMER1_VAL_OFF ;
 scalar_t__ TIMER_A370_STATUS ;
 scalar_t__ TIMER_CTRL ;
 int WDIOF_PRETIMEOUT ;
 int WDT_A370_EXPIRED ;
 int atomic_io_modify (scalar_t__,int,int) ;
 int readl (scalar_t__) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int armada375_start(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);
 u32 reg;


 writel(dev->clk_rate * wdt_dev->timeout,
        dev->reg + dev->data->wdt_counter_offset);
 if (dev->wdt.info->options & WDIOF_PRETIMEOUT)
  writel(dev->clk_rate * (wdt_dev->timeout - wdt_dev->pretimeout),
         dev->reg + TIMER1_VAL_OFF);


 atomic_io_modify(dev->reg + TIMER_A370_STATUS, WDT_A370_EXPIRED, 0);


 reg = dev->data->wdt_enable_bit;
 if (dev->wdt.info->options & WDIOF_PRETIMEOUT)
  reg |= TIMER1_ENABLE_BIT;
 atomic_io_modify(dev->reg + TIMER_CTRL, reg, reg);


 reg = readl(dev->rstout);
 reg |= dev->data->rstout_enable_bit;
 writel(reg, dev->rstout);

 atomic_io_modify(dev->rstout_mask, dev->data->rstout_mask_bit, 0);
 return 0;
}
