
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int dev; int regmap; } ;


 unsigned int BD70528_MASK_CHG_STAT ;
 int BD70528_REG_CHG_CURR_STAT ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int POWER_SUPPLY_CHARGE_TYPE_UNKNOWN ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd70528_get_charge_type(struct bd70528_psy *bdpsy, int *val)
{
 int ret;
 unsigned int v;

 ret = regmap_read(bdpsy->regmap, BD70528_REG_CHG_CURR_STAT, &v);
 if (ret) {
  dev_err(bdpsy->dev, "Charger state read failure %d\n",
   ret);
  return ret;
 }

 switch (v & BD70528_MASK_CHG_STAT) {
 case 131:
  *val = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  break;
 case 137:
 case 132:
  *val = POWER_SUPPLY_CHARGE_TYPE_FAST;
  break;
 case 138:
 case 133:

 case 134:
 case 135:
 case 136:
 case 128:
 case 130:
 case 129:
 case 139:
  *val = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 default:
  *val = POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
  break;
 }

 return 0;
}
