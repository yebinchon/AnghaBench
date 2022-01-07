
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BAT_CHARGE_LIMIT ;
 int BAT_CHARGE_LIMIT_MAX ;
 int EINVAL ;
 int EIO ;

 int ec_write (int ,int) ;

__attribute__((used)) static int bat_set_property(struct power_supply *psy,
    enum power_supply_property psp,
    const union power_supply_propval *val)
{
 int level;

 switch (psp) {
 case 128:
  level = val->intval;
  if (level < 0 || level > BAT_CHARGE_LIMIT_MAX)
   return -EINVAL;
  if (ec_write(BAT_CHARGE_LIMIT, level) < 0)
   return -EIO;
  break;
 default:
  break;
 }
 return 0;
}
