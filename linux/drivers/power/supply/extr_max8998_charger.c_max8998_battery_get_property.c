
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
typedef int u8 ;
struct power_supply {int dummy; } ;
struct max8998_battery_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {struct i2c_client* i2c; } ;


 int EINVAL ;
 int MAX8998_REG_STATUS2 ;


 int max8998_read_reg (struct i2c_client*,int ,int*) ;
 struct max8998_battery_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max8998_battery_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct max8998_battery_data *max8998 = power_supply_get_drvdata(psy);
 struct i2c_client *i2c = max8998->iodev->i2c;
 int ret;
 u8 reg;

 switch (psp) {
 case 128:
  ret = max8998_read_reg(i2c, MAX8998_REG_STATUS2, &reg);
  if (ret)
   return ret;
  if (reg & (1 << 4))
   val->intval = 0;
  else
   val->intval = 1;
  break;
 case 129:
  ret = max8998_read_reg(i2c, MAX8998_REG_STATUS2, &reg);
  if (ret)
   return ret;
  if (reg & (1 << 3))
   val->intval = 0;
  else
   val->intval = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
