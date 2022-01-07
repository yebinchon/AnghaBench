
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_charger {int battery; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t da9150_charger_chg_irq(int irq, void *data)
{
 struct da9150_charger *charger = data;

 power_supply_changed(charger->battery);

 return IRQ_HANDLED;
}
