
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sama5d4_wdt {int dummy; } ;
typedef int irqreturn_t ;


 int AT91_WDT_SR ;
 int IRQ_HANDLED ;
 int emergency_restart () ;
 struct sama5d4_wdt* platform_get_drvdata (void*) ;
 int pr_crit (char*) ;
 scalar_t__ wdt_read (struct sama5d4_wdt*,int ) ;

__attribute__((used)) static irqreturn_t sama5d4_wdt_irq_handler(int irq, void *dev_id)
{
 struct sama5d4_wdt *wdt = platform_get_drvdata(dev_id);

 if (wdt_read(wdt, AT91_WDT_SR)) {
  pr_crit("Atmel Watchdog Software Reset\n");
  emergency_restart();
  pr_crit("Reboot didn't succeed\n");
 }

 return IRQ_HANDLED;
}
