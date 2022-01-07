
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct sp5100_tco {int tcobase; } ;


 int SP5100_WDT_CONTROL (int ) ;
 int SP5100_WDT_START_STOP_BIT ;
 int readl (int ) ;
 struct sp5100_tco* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int tco_timer_start(struct watchdog_device *wdd)
{
 struct sp5100_tco *tco = watchdog_get_drvdata(wdd);
 u32 val;

 val = readl(SP5100_WDT_CONTROL(tco->tcobase));
 val |= SP5100_WDT_START_STOP_BIT;
 writel(val, SP5100_WDT_CONTROL(tco->tcobase));

 return 0;
}
