
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {int supply; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t axp20x_usb_power_irq(int irq, void *devid)
{
 struct axp20x_usb_power *power = devid;

 power_supply_changed(power->supply);

 return IRQ_HANDLED;
}
