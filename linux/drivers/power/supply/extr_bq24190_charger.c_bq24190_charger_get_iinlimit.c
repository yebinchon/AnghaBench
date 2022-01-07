
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24190_dev_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BQ24190_REG_ISC ;
 int BQ24190_REG_ISC_IINLIM_MASK ;
 int BQ24190_REG_ISC_IINLIM_SHIFT ;
 int bq24190_get_field_val (struct bq24190_dev_info*,int ,int ,int ,int ,int ,int*) ;
 int bq24190_isc_iinlim_values ;

__attribute__((used)) static int bq24190_charger_get_iinlimit(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 int iinlimit, ret;

 ret = bq24190_get_field_val(bdi, BQ24190_REG_ISC,
   BQ24190_REG_ISC_IINLIM_MASK,
   BQ24190_REG_ISC_IINLIM_SHIFT,
   bq24190_isc_iinlim_values,
   ARRAY_SIZE(bq24190_isc_iinlim_values), &iinlimit);
 if (ret < 0)
  return ret;

 val->intval = iinlimit;
 return 0;
}
