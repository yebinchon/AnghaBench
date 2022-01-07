
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max8925_power_info {int battery; int usb; int ac; } ;


 int max8925_deinit_charger (struct max8925_power_info*) ;
 struct max8925_power_info* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int max8925_power_remove(struct platform_device *pdev)
{
 struct max8925_power_info *info = platform_get_drvdata(pdev);

 if (info) {
  power_supply_unregister(info->ac);
  power_supply_unregister(info->usb);
  power_supply_unregister(info->battery);
  max8925_deinit_charger(info);
 }
 return 0;
}
