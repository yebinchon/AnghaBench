
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct pm860x_battery_info {int present; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODEV ;
 int OCV_MODE_ACTIVE ;







 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int calc_capacity (struct pm860x_battery_info*,int*) ;
 int calc_ocv (struct pm860x_battery_info*,int*) ;
 struct pm860x_battery_info* dev_get_drvdata (int ) ;
 int measure_current (struct pm860x_battery_info*,int*) ;
 int measure_temp (struct pm860x_battery_info*,int*) ;
 int measure_vbatt (struct pm860x_battery_info*,int ,int*) ;

__attribute__((used)) static int pm860x_batt_get_prop(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct pm860x_battery_info *info = dev_get_drvdata(psy->dev.parent);
 int data;
 int ret;

 switch (psp) {
 case 132:
  val->intval = info->present;
  break;
 case 134:
  ret = calc_capacity(info, &data);
  if (ret)
   return ret;
  if (data < 0)
   data = 0;
  else if (data > 100)
   data = 100;

  if (!info->present)
   data = 100;
  val->intval = data;
  break;
 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 128:

  ret = measure_vbatt(info, OCV_MODE_ACTIVE, &data);
  if (ret)
   return ret;
  val->intval = data * 1000;
  break;
 case 129:

  ret = calc_ocv(info, &data);
  if (ret)
   return ret;
  val->intval = data * 1000;
  break;
 case 133:
  ret = measure_current(info, &data);
  if (ret)
   return ret;
  val->intval = data;
  break;
 case 130:
  if (info->present) {
   ret = measure_temp(info, &data);
   if (ret)
    return ret;
   data *= 10;
  } else {

   data = 250;
  }
  val->intval = data;
  break;
 default:
  return -ENODEV;
 }
 return 0;
}
