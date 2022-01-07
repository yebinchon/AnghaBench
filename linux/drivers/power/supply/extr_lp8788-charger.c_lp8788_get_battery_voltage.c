
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct lp8788_charger {int dummy; } ;


 int lp8788_get_vbatt_adc (struct lp8788_charger*,int *) ;

__attribute__((used)) static int lp8788_get_battery_voltage(struct lp8788_charger *pchg,
    union power_supply_propval *val)
{
 return lp8788_get_vbatt_adc(pchg, &val->intval);
}
