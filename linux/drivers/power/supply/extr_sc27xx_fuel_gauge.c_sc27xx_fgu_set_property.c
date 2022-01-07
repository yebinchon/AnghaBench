
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sc27xx_fgu_data {int lock; int dev; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sc27xx_fgu_data* power_supply_get_drvdata (struct power_supply*) ;
 int sc27xx_fgu_adjust_cap (struct sc27xx_fgu_data*,int ) ;
 int sc27xx_fgu_save_last_cap (struct sc27xx_fgu_data*,int ) ;

__attribute__((used)) static int sc27xx_fgu_set_property(struct power_supply *psy,
       enum power_supply_property psp,
       const union power_supply_propval *val)
{
 struct sc27xx_fgu_data *data = power_supply_get_drvdata(psy);
 int ret;

 mutex_lock(&data->lock);

 switch (psp) {
 case 128:
  ret = sc27xx_fgu_save_last_cap(data, val->intval);
  if (ret < 0)
   dev_err(data->dev, "failed to save battery capacity\n");
  break;

 case 129:
  sc27xx_fgu_adjust_cap(data, val->intval);
  ret = 0;
  break;

 default:
  ret = -EINVAL;
 }

 mutex_unlock(&data->lock);

 return ret;
}
