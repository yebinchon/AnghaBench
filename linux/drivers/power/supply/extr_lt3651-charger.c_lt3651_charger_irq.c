
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int power_supply_changed (struct power_supply*) ;

__attribute__((used)) static irqreturn_t lt3651_charger_irq(int irq, void *devid)
{
 struct power_supply *charger = devid;

 power_supply_changed(charger);

 return IRQ_HANDLED;
}
