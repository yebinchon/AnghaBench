
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24190_dev_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BQ24190_REG_CVC ;
 int BQ24190_REG_CVC_VREG_MASK ;
 int BQ24190_REG_CVC_VREG_SHIFT ;
 int bq24190_cvc_vreg_values ;
 int bq24190_get_field_val (struct bq24190_dev_info*,int ,int ,int ,int ,int ,int*) ;

__attribute__((used)) static int bq24190_charger_get_voltage(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 int voltage, ret;

 ret = bq24190_get_field_val(bdi, BQ24190_REG_CVC,
   BQ24190_REG_CVC_VREG_MASK, BQ24190_REG_CVC_VREG_SHIFT,
   bq24190_cvc_vreg_values,
   ARRAY_SIZE(bq24190_cvc_vreg_values), &voltage);
 if (ret < 0)
  return ret;

 val->intval = voltage;
 return 0;
}
