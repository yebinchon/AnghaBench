
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct da9052_battery {int psy; int status; TYPE_1__* da9052; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq_data; } ;


 int DA9052_IRQ_CHGEND ;
 int DA9052_IRQ_DCIN ;
 int DA9052_IRQ_TBAT ;
 int DA9052_IRQ_VBUS ;
 int IRQ_HANDLED ;
 int POWER_SUPPLY_STATUS_FULL ;
 int da9052_bat_check_status (struct da9052_battery*,int *) ;
 int power_supply_changed (int ) ;
 int regmap_irq_get_virq (int ,int) ;

__attribute__((used)) static irqreturn_t da9052_bat_irq(int irq, void *data)
{
 struct da9052_battery *bat = data;
 int virq;

 virq = regmap_irq_get_virq(bat->da9052->irq_data, irq);
 irq -= virq;

 if (irq == DA9052_IRQ_CHGEND)
  bat->status = POWER_SUPPLY_STATUS_FULL;
 else
  da9052_bat_check_status(bat, ((void*)0));

 if (irq == DA9052_IRQ_CHGEND || irq == DA9052_IRQ_DCIN ||
     irq == DA9052_IRQ_VBUS || irq == DA9052_IRQ_TBAT) {
  power_supply_changed(bat->psy);
 }

 return IRQ_HANDLED;
}
