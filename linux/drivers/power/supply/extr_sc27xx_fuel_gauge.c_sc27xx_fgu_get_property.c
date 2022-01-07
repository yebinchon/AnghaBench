
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sc27xx_fgu_data {int bat_present; int total_cap; int lock; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sc27xx_fgu_data* power_supply_get_drvdata (struct power_supply*) ;
 int sc27xx_fgu_get_capacity (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_charge_vol (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_current (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_health (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_status (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_temp (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_vbat_ocv (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_vbat_vol (struct sc27xx_fgu_data*,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct sc27xx_fgu_data *data = power_supply_get_drvdata(psy);
 int ret = 0;
 int value;

 mutex_lock(&data->lock);

 switch (psp) {
 case 132:
  ret = sc27xx_fgu_get_status(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 134:
  ret = sc27xx_fgu_get_health(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 133:
  val->intval = data->bat_present;
  break;

 case 130:
  ret = sc27xx_fgu_get_temp(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;

 case 139:
  ret = sc27xx_fgu_get_capacity(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 129:
  ret = sc27xx_fgu_get_vbat_vol(data, &value);
  if (ret)
   goto error;

  val->intval = value * 1000;
  break;

 case 128:
  ret = sc27xx_fgu_get_vbat_ocv(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 138:
  ret = sc27xx_fgu_get_charge_vol(data, &value);
  if (ret)
   goto error;

  val->intval = value;
  break;

 case 136:
 case 137:
  ret = sc27xx_fgu_get_current(data, &value);
  if (ret)
   goto error;

  val->intval = value * 1000;
  break;

 case 135:
  val->intval = data->total_cap * 1000;
  break;

 default:
  ret = -EINVAL;
  break;
 }

error:
 mutex_unlock(&data->lock);
 return ret;
}
