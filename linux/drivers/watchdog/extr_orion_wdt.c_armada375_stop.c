
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {TYPE_1__* info; } ;
struct orion_watchdog {scalar_t__ reg; TYPE_2__* data; int rstout; scalar_t__ rstout_mask; } ;
struct TYPE_4__ {int wdt_enable_bit; int rstout_enable_bit; int rstout_mask_bit; } ;
struct TYPE_3__ {int options; } ;


 int TIMER1_ENABLE_BIT ;
 scalar_t__ TIMER_CTRL ;
 int WDIOF_PRETIMEOUT ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 int readl (int ) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int armada375_stop(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);
 u32 reg, mask;


 atomic_io_modify(dev->rstout_mask, dev->data->rstout_mask_bit,
        dev->data->rstout_mask_bit);
 reg = readl(dev->rstout);
 reg &= ~dev->data->rstout_enable_bit;
 writel(reg, dev->rstout);


 mask = dev->data->wdt_enable_bit;
 if (wdt_dev->info->options & WDIOF_PRETIMEOUT)
  mask |= TIMER1_ENABLE_BIT;
 atomic_io_modify(dev->reg + TIMER_CTRL, mask, 0);

 return 0;
}
