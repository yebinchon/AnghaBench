
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct z2_charger* properties; } ;
struct z2_charger {TYPE_1__ batt_ps_desc; int batt_ps; int bat_work; struct z2_battery_info* info; } ;
struct z2_battery_info {scalar_t__ charge_gpio; } ;
struct i2c_client {int dummy; } ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct z2_charger*) ;
 int gpio_free (scalar_t__) ;
 scalar_t__ gpio_is_valid (scalar_t__) ;
 int gpio_to_irq (scalar_t__) ;
 struct z2_charger* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct z2_charger*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int z2_batt_remove(struct i2c_client *client)
{
 struct z2_charger *charger = i2c_get_clientdata(client);
 struct z2_battery_info *info = charger->info;

 cancel_work_sync(&charger->bat_work);
 power_supply_unregister(charger->batt_ps);

 kfree(charger->batt_ps_desc.properties);
 if (info->charge_gpio >= 0 && gpio_is_valid(info->charge_gpio)) {
  free_irq(gpio_to_irq(info->charge_gpio), charger);
  gpio_free(info->charge_gpio);
 }

 kfree(charger);

 return 0;
}
