
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct rt9455_info {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * rt9455_ichrg_values ;

__attribute__((used)) static int rt9455_charger_get_current_max(struct rt9455_info *info,
       union power_supply_propval *val)
{
 int idx = ARRAY_SIZE(rt9455_ichrg_values) - 1;

 val->intval = rt9455_ichrg_values[idx];

 return 0;
}
