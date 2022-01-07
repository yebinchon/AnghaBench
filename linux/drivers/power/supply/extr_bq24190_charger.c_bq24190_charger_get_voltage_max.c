
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct bq24190_dev_info {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * bq24190_cvc_vreg_values ;

__attribute__((used)) static int bq24190_charger_get_voltage_max(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 int idx = ARRAY_SIZE(bq24190_cvc_vreg_values) - 1;

 val->intval = bq24190_cvc_vreg_values[idx];
 return 0;
}
