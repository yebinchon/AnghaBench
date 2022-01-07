
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_bci {int dev; int usb; int ac; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TWL4030_ACCHGOV ;
 int TWL4030_BATSTS ;
 int TWL4030_ICHGEOC ;
 int TWL4030_ICHGLOW ;
 int TWL4030_INTERRUPTS_BCIISR1A ;
 int TWL4030_INTERRUPTS_BCIISR2A ;
 int TWL4030_MODULE_INTERRUPTS ;
 int TWL4030_TBATOR1 ;
 int TWL4030_TBATOR2 ;
 int TWL4030_VBATOV ;
 int TWL4030_VBUSOV ;
 int dev_crit (int ,char*) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_warn (int ,char*) ;
 int power_supply_changed (int ) ;
 int twl4030_charger_update_current (struct twl4030_bci*) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static irqreturn_t twl4030_bci_interrupt(int irq, void *arg)
{
 struct twl4030_bci *bci = arg;
 u8 irqs1, irqs2;
 int ret;

 ret = twl_i2c_read_u8(TWL4030_MODULE_INTERRUPTS, &irqs1,
         TWL4030_INTERRUPTS_BCIISR1A);
 if (ret < 0)
  return IRQ_HANDLED;

 ret = twl_i2c_read_u8(TWL4030_MODULE_INTERRUPTS, &irqs2,
         TWL4030_INTERRUPTS_BCIISR2A);
 if (ret < 0)
  return IRQ_HANDLED;

 dev_dbg(bci->dev, "BCI irq %02x %02x\n", irqs2, irqs1);

 if (irqs1 & (TWL4030_ICHGLOW | TWL4030_ICHGEOC)) {

  power_supply_changed(bci->ac);
  power_supply_changed(bci->usb);
 }
 twl4030_charger_update_current(bci);


 if (irqs1 & (TWL4030_TBATOR2 | TWL4030_TBATOR1))
  dev_warn(bci->dev, "battery temperature out of range\n");

 if (irqs1 & TWL4030_BATSTS)
  dev_crit(bci->dev, "battery disconnected\n");

 if (irqs2 & TWL4030_VBATOV)
  dev_crit(bci->dev, "VBAT overvoltage\n");

 if (irqs2 & TWL4030_VBUSOV)
  dev_crit(bci->dev, "VBUS overvoltage\n");

 if (irqs2 & TWL4030_ACCHGOV)
  dev_crit(bci->dev, "Ac charger overvoltage\n");

 return IRQ_HANDLED;
}
