
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z2_charger {int bat_work; } ;
struct power_supply {int dummy; } ;


 struct z2_charger* power_supply_get_drvdata (struct power_supply*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void z2_batt_ext_power_changed(struct power_supply *batt_ps)
{
 struct z2_charger *charger = power_supply_get_drvdata(batt_ps);

 schedule_work(&charger->bat_work);
}
