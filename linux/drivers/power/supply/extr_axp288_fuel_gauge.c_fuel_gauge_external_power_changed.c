
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct axp288_fg_info {int bat; } ;


 int power_supply_changed (int ) ;
 struct axp288_fg_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static void fuel_gauge_external_power_changed(struct power_supply *psy)
{
 struct axp288_fg_info *info = power_supply_get_drvdata(psy);

 power_supply_changed(info->bat);
}
