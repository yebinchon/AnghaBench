
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct axp288_fg_info {scalar_t__* irq; int * iio_channel; int bat; } ;


 int AXP288_FG_INTR_NUM ;
 int IIO_CHANNEL_NUM ;
 int free_irq (scalar_t__,struct axp288_fg_info*) ;
 int fuel_gauge_remove_debugfs (struct axp288_fg_info*) ;
 int iio_channel_release (int ) ;
 struct axp288_fg_info* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int axp288_fuel_gauge_remove(struct platform_device *pdev)
{
 struct axp288_fg_info *info = platform_get_drvdata(pdev);
 int i;

 power_supply_unregister(info->bat);
 fuel_gauge_remove_debugfs(info);

 for (i = 0; i < AXP288_FG_INTR_NUM; i++)
  if (info->irq[i] >= 0)
   free_irq(info->irq[i], info);

 for (i = 0; i < IIO_CHANNEL_NUM; i++)
  iio_channel_release(info->iio_channel[i]);

 return 0;
}
