
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z2_charger {int bat_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t z2_charge_switch_irq(int irq, void *devid)
{
 struct z2_charger *charger = devid;
 schedule_work(&charger->bat_work);
 return IRQ_HANDLED;
}
