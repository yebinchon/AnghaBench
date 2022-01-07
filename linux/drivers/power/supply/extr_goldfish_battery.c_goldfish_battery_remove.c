
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct goldfish_battery_data {int ac; int battery; } ;


 struct goldfish_battery_data* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int goldfish_battery_remove(struct platform_device *pdev)
{
 struct goldfish_battery_data *data = platform_get_drvdata(pdev);

 power_supply_unregister(data->battery);
 power_supply_unregister(data->ac);
 return 0;
}
