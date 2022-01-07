
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct da9150_charger {struct power_supply* supply_online; } ;



__attribute__((used)) static inline int da9150_charger_supply_online(struct da9150_charger *charger,
            struct power_supply *psy,
            union power_supply_propval *val)
{
 val->intval = (psy == charger->supply_online) ? 1 : 0;

 return 0;
}
