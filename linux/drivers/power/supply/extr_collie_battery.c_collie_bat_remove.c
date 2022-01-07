
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucb1x00_dev {int dummy; } ;
struct TYPE_5__ {int psy; } ;
struct TYPE_4__ {int psy; } ;


 int ARRAY_SIZE (int ) ;
 int COLLIE_GPIO_CO ;
 int bat_work ;
 int cancel_work_sync (int *) ;
 TYPE_3__ collie_bat_bu ;
 TYPE_1__ collie_bat_main ;
 int collie_batt_gpios ;
 int free_irq (int ,TYPE_1__*) ;
 int gpio_free_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static void collie_bat_remove(struct ucb1x00_dev *dev)
{
 free_irq(gpio_to_irq(COLLIE_GPIO_CO), &collie_bat_main);

 power_supply_unregister(collie_bat_bu.psy);
 power_supply_unregister(collie_bat_main.psy);






 cancel_work_sync(&bat_work);
 gpio_free_array(collie_batt_gpios, ARRAY_SIZE(collie_batt_gpios));
}
