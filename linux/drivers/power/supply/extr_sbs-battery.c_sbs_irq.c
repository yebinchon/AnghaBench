
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sbs_supply_changed (void*) ;

__attribute__((used)) static irqreturn_t sbs_irq(int irq, void *devid)
{
 sbs_supply_changed(devid);
 return IRQ_HANDLED;
}
