
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct da9150_fg {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;





 int da9150_fg_capacity (struct da9150_fg*,union power_supply_propval*) ;
 int da9150_fg_charge_full (struct da9150_fg*,union power_supply_propval*) ;
 int da9150_fg_current_avg (struct da9150_fg*,union power_supply_propval*) ;
 int da9150_fg_temp (struct da9150_fg*,union power_supply_propval*) ;
 int da9150_fg_voltage_avg (struct da9150_fg*,union power_supply_propval*) ;
 struct da9150_fg* dev_get_drvdata (int ) ;

__attribute__((used)) static int da9150_fg_get_prop(struct power_supply *psy,
         enum power_supply_property psp,
         union power_supply_propval *val)
{
 struct da9150_fg *fg = dev_get_drvdata(psy->dev.parent);
 int ret;

 switch (psp) {
 case 132:
  ret = da9150_fg_capacity(fg, val);
  break;
 case 130:
  ret = da9150_fg_current_avg(fg, val);
  break;
 case 128:
  ret = da9150_fg_voltage_avg(fg, val);
  break;
 case 131:
  ret = da9150_fg_charge_full(fg, val);
  break;
 case 129:
  ret = da9150_fg_temp(fg, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
