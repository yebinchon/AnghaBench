
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pic32_wdt {scalar_t__ regs; } ;


 int PIC32_CLR (scalar_t__) ;
 int WDTCON_ON ;
 scalar_t__ WDTCON_REG ;
 int nop () ;
 struct pic32_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int pic32_wdt_stop(struct watchdog_device *wdd)
{
 struct pic32_wdt *wdt = watchdog_get_drvdata(wdd);

 writel(WDTCON_ON, PIC32_CLR(wdt->regs + WDTCON_REG));





 nop();

 return 0;
}
