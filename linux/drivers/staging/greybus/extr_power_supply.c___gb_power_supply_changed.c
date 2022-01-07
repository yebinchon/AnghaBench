
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int psy; } ;


 int power_supply_changed (int ) ;

__attribute__((used)) static void __gb_power_supply_changed(struct gb_power_supply *gbpsy)
{
 power_supply_changed(gbpsy->psy);
}
