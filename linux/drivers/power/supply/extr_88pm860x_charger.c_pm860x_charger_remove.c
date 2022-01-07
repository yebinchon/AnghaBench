
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int irq_nums; int * irq; int usb; } ;
struct platform_device {int dummy; } ;


 int free_irq (int ,struct pm860x_charger_info*) ;
 struct pm860x_charger_info* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int pm860x_charger_remove(struct platform_device *pdev)
{
 struct pm860x_charger_info *info = platform_get_drvdata(pdev);
 int i;

 power_supply_unregister(info->usb);
 for (i = 0; i < info->irq_nums; i++)
  free_irq(info->irq[i], info);
 return 0;
}
