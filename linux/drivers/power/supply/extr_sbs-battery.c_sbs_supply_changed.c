
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbs_info {int is_present; int gpio_detect; struct power_supply* power_supply; } ;
struct power_supply {int dummy; } ;


 int gpiod_get_value_cansleep (int ) ;
 int power_supply_changed (struct power_supply*) ;

__attribute__((used)) static void sbs_supply_changed(struct sbs_info *chip)
{
 struct power_supply *battery = chip->power_supply;
 int ret;

 ret = gpiod_get_value_cansleep(chip->gpio_detect);
 if (ret < 0)
  return;
 chip->is_present = ret;
 power_supply_changed(battery);
}
