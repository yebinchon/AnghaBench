
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int panic (char*) ;

__attribute__((used)) static irqreturn_t mid_wdt_irq(int irq, void *dev_id)
{
 panic("Kernel Watchdog");


 return IRQ_HANDLED;
}
