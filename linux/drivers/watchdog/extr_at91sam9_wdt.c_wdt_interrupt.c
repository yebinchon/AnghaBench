
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91wdt {int dummy; } ;
typedef int irqreturn_t ;


 int AT91_WDT_SR ;
 int IRQ_HANDLED ;
 int emergency_restart () ;
 int pr_crit (char*) ;
 scalar_t__ wdt_read (struct at91wdt*,int ) ;

__attribute__((used)) static irqreturn_t wdt_interrupt(int irq, void *dev_id)
{
 struct at91wdt *wdt = (struct at91wdt *)dev_id;

 if (wdt_read(wdt, AT91_WDT_SR)) {
  pr_crit("at91sam9 WDT software reset\n");
  emergency_restart();
  pr_crit("Reboot didn't ?????\n");
 }

 return IRQ_HANDLED;
}
