
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply_info {int technology; int voltage_min_design; int voltage_max_design; int charge_full_design; int name; } ;
struct power_supply {int dev; } ;
struct gab_platform_data {int (* cal_charge ) (int) ;struct power_supply_info battery_info; } ;
struct gab {struct gab_platform_data* pdata; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int gab_get_status (struct gab*) ;
 int read_channel (struct gab*,int,int*) ;
 int stub1 (int) ;
 struct gab* to_generic_bat (struct power_supply*) ;

__attribute__((used)) static int gab_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct gab *adc_bat;
 struct gab_platform_data *pdata;
 struct power_supply_info *bat_info;
 int result = 0;
 int ret = 0;

 adc_bat = to_generic_bat(psy);
 if (!adc_bat) {
  dev_err(&psy->dev, "no battery infos ?!\n");
  return -EINVAL;
 }
 pdata = adc_bat->pdata;
 bat_info = &pdata->battery_info;

 switch (psp) {
 case 132:
  val->intval = gab_get_status(adc_bat);
  break;
 case 138:
  val->intval = 0;
  break;
 case 136:
  val->intval = pdata->cal_charge(result);
  break;
 case 128:
 case 135:
 case 133:
  ret = read_channel(adc_bat, psp, &result);
  if (ret < 0)
   goto err;
  val->intval = result;
  break;
 case 131:
  val->intval = bat_info->technology;
  break;
 case 129:
  val->intval = bat_info->voltage_min_design;
  break;
 case 130:
  val->intval = bat_info->voltage_max_design;
  break;
 case 137:
  val->intval = bat_info->charge_full_design;
  break;
 case 134:
  val->strval = bat_info->name;
  break;
 default:
  return -EINVAL;
 }
err:
 return ret;
}
