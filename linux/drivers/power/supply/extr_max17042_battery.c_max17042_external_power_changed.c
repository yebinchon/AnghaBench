
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 int power_supply_changed (struct power_supply*) ;

__attribute__((used)) static void max17042_external_power_changed(struct power_supply *psy)
{
 power_supply_changed(psy);
}
