
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ POWER_SUPPLY_TYPE_BATTERY ;
 int power_supply_update_bat_leds (struct power_supply*) ;
 int power_supply_update_gen_leds (struct power_supply*) ;

void power_supply_update_leds(struct power_supply *psy)
{
 if (psy->desc->type == POWER_SUPPLY_TYPE_BATTERY)
  power_supply_update_bat_leds(psy);
 else
  power_supply_update_gen_leds(psy);
}
