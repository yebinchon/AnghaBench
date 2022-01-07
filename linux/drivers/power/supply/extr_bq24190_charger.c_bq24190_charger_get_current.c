
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef scalar_t__ u8 ;
struct bq24190_dev_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BQ24190_REG_CCC ;
 int BQ24190_REG_CCC_FORCE_20PCT_MASK ;
 int BQ24190_REG_CCC_FORCE_20PCT_SHIFT ;
 int BQ24190_REG_CCC_ICHG_MASK ;
 int BQ24190_REG_CCC_ICHG_SHIFT ;
 int bq24190_ccc_ichg_values ;
 int bq24190_get_field_val (struct bq24190_dev_info*,int ,int ,int ,int ,int ,int*) ;
 int bq24190_read_mask (struct bq24190_dev_info*,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static int bq24190_charger_get_current(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 u8 v;
 int curr, ret;

 ret = bq24190_get_field_val(bdi, BQ24190_REG_CCC,
   BQ24190_REG_CCC_ICHG_MASK, BQ24190_REG_CCC_ICHG_SHIFT,
   bq24190_ccc_ichg_values,
   ARRAY_SIZE(bq24190_ccc_ichg_values), &curr);
 if (ret < 0)
  return ret;

 ret = bq24190_read_mask(bdi, BQ24190_REG_CCC,
   BQ24190_REG_CCC_FORCE_20PCT_MASK,
   BQ24190_REG_CCC_FORCE_20PCT_SHIFT, &v);
 if (ret < 0)
  return ret;


 if (v)
  curr /= 5;

 val->intval = curr;
 return 0;
}
