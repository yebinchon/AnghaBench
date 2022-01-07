
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_charger {int charger; int battery; } ;


 int power_supply_unregister (int ) ;

__attribute__((used)) static void lp8788_psy_unregister(struct lp8788_charger *pchg)
{
 power_supply_unregister(pchg->battery);
 power_supply_unregister(pchg->charger);
}
