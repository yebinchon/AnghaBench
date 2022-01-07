
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int timeout; } ;
struct orion_watchdog {int clk_rate; TYPE_1__* data; scalar_t__ rstout; scalar_t__ reg; } ;
struct TYPE_2__ {int rstout_enable_bit; int wdt_enable_bit; scalar_t__ wdt_counter_offset; } ;


 scalar_t__ TIMER_CTRL ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int orion_start(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);


 writel(dev->clk_rate * wdt_dev->timeout,
        dev->reg + dev->data->wdt_counter_offset);


 atomic_io_modify(dev->reg + TIMER_CTRL, dev->data->wdt_enable_bit,
      dev->data->wdt_enable_bit);


 atomic_io_modify(dev->rstout, dev->data->rstout_enable_bit,
          dev->data->rstout_enable_bit);

 return 0;
}
