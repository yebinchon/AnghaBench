
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_bci {int ac_cur; int usb; int ac; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int power_supply_changed (int ) ;
 int twl4030_charger_update_current (struct twl4030_bci*) ;

__attribute__((used)) static irqreturn_t twl4030_charger_interrupt(int irq, void *arg)
{
 struct twl4030_bci *bci = arg;

 dev_dbg(bci->dev, "CHG_PRES irq\n");

 bci->ac_cur = 500000;
 twl4030_charger_update_current(bci);
 power_supply_changed(bci->ac);
 power_supply_changed(bci->usb);

 return IRQ_HANDLED;
}
