
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_6__ {int psy; } ;
struct TYPE_5__ {int psy; } ;


 int ARRAY_SIZE (int ) ;
 int TOSA_GPIO_BAT0_CRG ;
 int TOSA_GPIO_BAT1_CRG ;
 int TOSA_GPIO_JACKET_DETECT ;
 int bat_work ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,TYPE_1__*) ;
 int gpio_free_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int power_supply_unregister (int ) ;
 TYPE_3__ tosa_bat_bu ;
 int tosa_bat_gpios ;
 TYPE_1__ tosa_bat_jacket ;
 TYPE_1__ tosa_bat_main ;

__attribute__((used)) static int tosa_bat_remove(struct platform_device *dev)
{
 free_irq(gpio_to_irq(TOSA_GPIO_JACKET_DETECT), &tosa_bat_jacket);
 free_irq(gpio_to_irq(TOSA_GPIO_BAT1_CRG), &tosa_bat_jacket);
 free_irq(gpio_to_irq(TOSA_GPIO_BAT0_CRG), &tosa_bat_main);

 power_supply_unregister(tosa_bat_bu.psy);
 power_supply_unregister(tosa_bat_jacket.psy);
 power_supply_unregister(tosa_bat_main.psy);






 cancel_work_sync(&bat_work);
 gpio_free_array(tosa_bat_gpios, ARRAY_SIZE(tosa_bat_gpios));
 return 0;
}
