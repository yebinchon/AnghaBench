
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftwdt010_wdt {int wdd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int watchdog_notify_pretimeout (int *) ;

__attribute__((used)) static irqreturn_t ftwdt010_wdt_interrupt(int irq, void *data)
{
 struct ftwdt010_wdt *gwdt = data;

 watchdog_notify_pretimeout(&gwdt->wdd);

 return IRQ_HANDLED;
}
