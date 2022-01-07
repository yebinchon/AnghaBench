
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9150_charger {int * battery; int * usb; int * supply_online; int dev; int da9150; } ;
typedef int irqreturn_t ;


 int DA9150_STATUS_H ;

 int DA9150_VBUS_STAT_MASK ;


 int IRQ_HANDLED ;
 int da9150_reg_read (int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int power_supply_changed (int *) ;

__attribute__((used)) static irqreturn_t da9150_charger_vbus_irq(int irq, void *data)
{
 struct da9150_charger *charger = data;
 u8 reg;

 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_H);


 switch (reg & DA9150_VBUS_STAT_MASK) {
 case 129:
 case 128:
  charger->supply_online = charger->battery;
  break;
 case 130:
  charger->supply_online = charger->usb;
  break;
 default:
  dev_warn(charger->dev, "Unknown VBUS state - reg = 0x%x\n",
    reg);
  charger->supply_online = ((void*)0);
  break;
 }

 power_supply_changed(charger->usb);
 power_supply_changed(charger->battery);

 return IRQ_HANDLED;
}
