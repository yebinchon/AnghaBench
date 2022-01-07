
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef scalar_t__ u8 ;
struct bq24190_dev_info {int dummy; } ;


 int BQ24190_REG_CCC ;
 int BQ24190_REG_CCC_FORCE_20PCT_MASK ;
 int BQ24190_REG_CCC_FORCE_20PCT_SHIFT ;
 int BQ24190_REG_POC ;
 int BQ24190_REG_POC_CHG_CONFIG_MASK ;
 int BQ24190_REG_POC_CHG_CONFIG_SHIFT ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static int bq24190_charger_get_charge_type(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 u8 v;
 int type, ret;

 ret = bq24190_read_mask(bdi, BQ24190_REG_POC,
   BQ24190_REG_POC_CHG_CONFIG_MASK,
   BQ24190_REG_POC_CHG_CONFIG_SHIFT,
   &v);
 if (ret < 0)
  return ret;


 if (!v) {
  type = POWER_SUPPLY_CHARGE_TYPE_NONE;
 } else {
  ret = bq24190_read_mask(bdi, BQ24190_REG_CCC,
    BQ24190_REG_CCC_FORCE_20PCT_MASK,
    BQ24190_REG_CCC_FORCE_20PCT_SHIFT,
    &v);
  if (ret < 0)
   return ret;

  type = (v) ? POWER_SUPPLY_CHARGE_TYPE_TRICKLE :
        POWER_SUPPLY_CHARGE_TYPE_FAST;
 }

 val->intval = type;

 return 0;
}
