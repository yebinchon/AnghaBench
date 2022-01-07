
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_charger {int battery; int usb; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_crit (int ,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t da9150_charger_vfault_irq(int irq, void *data)
{
 struct da9150_charger *charger = data;


 dev_crit(charger->dev, "VSYS under voltage!!!\n");
 power_supply_changed(charger->usb);
 power_supply_changed(charger->battery);

 return IRQ_HANDLED;
}
