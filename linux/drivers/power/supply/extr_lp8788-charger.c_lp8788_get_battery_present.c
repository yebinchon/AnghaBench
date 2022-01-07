
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct lp8788_charger {int lp; } ;


 int LP8788_CHG_STATUS ;
 int LP8788_NO_BATT_M ;
 int lp8788_read_byte (int ,int ,int*) ;

__attribute__((used)) static int lp8788_get_battery_present(struct lp8788_charger *pchg,
    union power_supply_propval *val)
{
 u8 data;
 int ret;

 ret = lp8788_read_byte(pchg->lp, LP8788_CHG_STATUS, &data);
 if (ret)
  return ret;

 val->intval = !(data & LP8788_NO_BATT_M);
 return 0;
}
