
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct orion_watchdog {TYPE_1__* data; scalar_t__ reg; int rstout; } ;
struct TYPE_2__ {int wdt_enable_bit; int rstout_enable_bit; } ;


 scalar_t__ TIMER_CTRL ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 int readl (int ) ;
 struct orion_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int armada370_stop(struct watchdog_device *wdt_dev)
{
 struct orion_watchdog *dev = watchdog_get_drvdata(wdt_dev);
 u32 reg;


 reg = readl(dev->rstout);
 reg &= ~dev->data->rstout_enable_bit;
 writel(reg, dev->rstout);


 atomic_io_modify(dev->reg + TIMER_CTRL, dev->data->wdt_enable_bit, 0);

 return 0;
}
