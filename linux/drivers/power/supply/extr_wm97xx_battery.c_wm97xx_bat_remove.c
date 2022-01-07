
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm97xx_batt_pdata {int charge_gpio; } ;
struct TYPE_2__ {struct wm97xx_batt_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int bat_psy ;
 int bat_work ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,struct platform_device*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int kfree (int ) ;
 int power_supply_unregister (int ) ;
 int prop ;

__attribute__((used)) static int wm97xx_bat_remove(struct platform_device *dev)
{
 struct wm97xx_batt_pdata *pdata = dev->dev.platform_data;

 if (pdata && gpio_is_valid(pdata->charge_gpio)) {
  free_irq(gpio_to_irq(pdata->charge_gpio), dev);
  gpio_free(pdata->charge_gpio);
 }
 cancel_work_sync(&bat_work);
 power_supply_unregister(bat_psy);
 kfree(prop);
 return 0;
}
