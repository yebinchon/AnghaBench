
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24190_dev_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BQ24190_REG_ICTRC ;
 int BQ24190_REG_ICTRC_TREG_MASK ;
 int BQ24190_REG_ICTRC_TREG_SHIFT ;
 int bq24190_ictrc_treg_values ;
 int bq24190_set_field_val (struct bq24190_dev_info*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bq24190_battery_set_temp_alert_max(struct bq24190_dev_info *bdi,
  const union power_supply_propval *val)
{
 return bq24190_set_field_val(bdi, BQ24190_REG_ICTRC,
   BQ24190_REG_ICTRC_TREG_MASK,
   BQ24190_REG_ICTRC_TREG_SHIFT,
   bq24190_ictrc_treg_values,
   ARRAY_SIZE(bq24190_ictrc_treg_values), val->intval);
}
