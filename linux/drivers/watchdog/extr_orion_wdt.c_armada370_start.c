
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct orion_watchdog {int clk_rate; scalar_t__ rstout; TYPE_1__* data; scalar_t__ reg; } ;
struct TYPE_2__ {int rstout_enable_bit; int wdt_enable_bit; scalar_t__ wdt_counter_offset; } ;


 scalar_t__ TIMER_A370_STATUS ;
 scalar_t__ TIMER_CTRL ;
 int WDT_A370_EXPIRED ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 int readl (scalar_t__) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int armada370_start(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);
 u32 reg;


 writel(dev->clk_rate * wdt_dev->timeout,
        dev->reg + dev->data->wdt_counter_offset);


 atomic_io_modify(dev->reg + TIMER_A370_STATUS, WDT_A370_EXPIRED, 0);


 atomic_io_modify(dev->reg + TIMER_CTRL, dev->data->wdt_enable_bit,
      dev->data->wdt_enable_bit);


 reg = readl(dev->rstout);
 reg |= dev->data->rstout_enable_bit;
 writel(reg, dev->rstout);
 return 0;
}
