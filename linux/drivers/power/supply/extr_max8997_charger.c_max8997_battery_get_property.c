
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
typedef int u8 ;
struct power_supply {int dummy; } ;
struct i2c_client {int dummy; } ;
struct charger_data {TYPE_1__* iodev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {struct i2c_client* i2c; } ;


 int EINVAL ;
 int MAX8997_REG_STATUS4 ;



 int POWER_SUPPLY_STATUS_FULL ;
 int max8997_read_reg (struct i2c_client*,int ,int*) ;
 struct charger_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max8997_battery_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct charger_data *charger = power_supply_get_drvdata(psy);
 struct i2c_client *i2c = charger->iodev->i2c;
 int ret;
 u8 reg;

 switch (psp) {
 case 128:
  val->intval = 0;
  ret = max8997_read_reg(i2c, MAX8997_REG_STATUS4, &reg);
  if (ret)
   return ret;
  if ((reg & (1 << 0)) == 0x1)
   val->intval = POWER_SUPPLY_STATUS_FULL;

  break;
 case 129:
  val->intval = 0;
  ret = max8997_read_reg(i2c, MAX8997_REG_STATUS4, &reg);
  if (ret)
   return ret;
  if ((reg & (1 << 2)) == 0x0)
   val->intval = 1;

  break;
 case 130:
  val->intval = 0;
  ret = max8997_read_reg(i2c, MAX8997_REG_STATUS4, &reg);
  if (ret)
   return ret;

  if (reg & (1 << 1))
   val->intval = 1;

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
