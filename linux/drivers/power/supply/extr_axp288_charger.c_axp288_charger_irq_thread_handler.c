
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_chrg_info {int* irq; int psy_usb; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;
 int CHRG_INTR_END ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t axp288_charger_irq_thread_handler(int irq, void *dev)
{
 struct axp288_chrg_info *info = dev;
 int i;

 for (i = 0; i < CHRG_INTR_END; i++) {
  if (info->irq[i] == irq)
   break;
 }

 if (i >= CHRG_INTR_END) {
  dev_warn(&info->pdev->dev, "spurious interrupt!!\n");
  return IRQ_NONE;
 }

 switch (i) {
 case 128:
  dev_dbg(&info->pdev->dev, "VBUS Over Voltage INTR\n");
  break;
 case 131:
  dev_dbg(&info->pdev->dev, "Charging Done INTR\n");
  break;
 case 132:
  dev_dbg(&info->pdev->dev, "Start Charging IRQ\n");
  break;
 case 135:
  dev_dbg(&info->pdev->dev,
   "Quit Safe Mode(restart timer) Charging IRQ\n");
  break;
 case 136:
  dev_dbg(&info->pdev->dev,
   "Enter Safe Mode(timer expire) Charging IRQ\n");
  break;
 case 129:
  dev_dbg(&info->pdev->dev,
   "Quit Battery Under Temperature(CHRG) INTR\n");
  break;
 case 133:
  dev_dbg(&info->pdev->dev,
   "Hit Battery Under Temperature(CHRG) INTR\n");
  break;
 case 130:
  dev_dbg(&info->pdev->dev,
   "Quit Battery Over Temperature(CHRG) INTR\n");
  break;
 case 134:
  dev_dbg(&info->pdev->dev,
   "Hit Battery Over Temperature(CHRG) INTR\n");
  break;
 default:
  dev_warn(&info->pdev->dev, "Spurious Interrupt!!!\n");
  goto out;
 }

 power_supply_changed(info->psy_usb);
out:
 return IRQ_HANDLED;
}
