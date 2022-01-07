
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_gpio_platform_data {scalar_t__ pullup_gpiod; int (* enable_external_pullup ) (int ) ;} ;
struct w1_bus_master {int dummy; } ;
struct platform_device {int dev; } ;


 struct w1_gpio_platform_data* dev_get_platdata (int *) ;
 int gpiod_set_value (scalar_t__,int ) ;
 struct w1_bus_master* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int ) ;
 int w1_remove_master_device (struct w1_bus_master*) ;

__attribute__((used)) static int w1_gpio_remove(struct platform_device *pdev)
{
 struct w1_bus_master *master = platform_get_drvdata(pdev);
 struct w1_gpio_platform_data *pdata = dev_get_platdata(&pdev->dev);

 if (pdata->enable_external_pullup)
  pdata->enable_external_pullup(0);

 if (pdata->pullup_gpiod)
  gpiod_set_value(pdata->pullup_gpiod, 0);

 w1_remove_master_device(master);

 return 0;
}
