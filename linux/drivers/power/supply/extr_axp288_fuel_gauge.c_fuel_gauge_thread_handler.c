
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_fg_info {int* irq; int bat; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int AXP288_FG_INTR_NUM ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;






 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t fuel_gauge_thread_handler(int irq, void *dev)
{
 struct axp288_fg_info *info = dev;
 int i;

 for (i = 0; i < AXP288_FG_INTR_NUM; i++) {
  if (info->irq[i] == irq)
   break;
 }

 if (i >= AXP288_FG_INTR_NUM) {
  dev_warn(&info->pdev->dev, "spurious interrupt!!\n");
  return IRQ_NONE;
 }

 switch (i) {
 case 132:
  dev_info(&info->pdev->dev,
   "Quit Battery under temperature in work mode IRQ (QWBTU)\n");
  break;
 case 130:
  dev_info(&info->pdev->dev,
   "Battery under temperature in work mode IRQ (WBTU)\n");
  break;
 case 133:
  dev_info(&info->pdev->dev,
   "Quit Battery over temperature in work mode IRQ (QWBTO)\n");
  break;
 case 131:
  dev_info(&info->pdev->dev,
   "Battery over temperature in work mode IRQ (WBTO)\n");
  break;
 case 128:
  dev_info(&info->pdev->dev, "Low Batt Warning(2) INTR\n");
  break;
 case 129:
  dev_info(&info->pdev->dev, "Low Batt Warning(1) INTR\n");
  break;
 default:
  dev_warn(&info->pdev->dev, "Spurious Interrupt!!!\n");
 }

 power_supply_changed(info->bat);
 return IRQ_HANDLED;
}
