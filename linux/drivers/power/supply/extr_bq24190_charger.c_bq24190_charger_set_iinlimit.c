
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
 int bq24190_isc_iinlim_values ;
 int bq24190_set_field_val (struct bq24190_dev_info*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bq24190_charger_set_iinlimit(struct bq24190_dev_info *bdi,
  const union power_supply_propval *val)
{
 return bq24190_set_field_val(bdi, BQ24190_REG_ISC,
   BQ24190_REG_ISC_IINLIM_MASK,
   BQ24190_REG_ISC_IINLIM_SHIFT,
   bq24190_isc_iinlim_values,
   ARRAY_SIZE(bq24190_isc_iinlim_values), val->intval);
}
