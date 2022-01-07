
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct device {int dummy; } ;


 int power_supply_unregister (struct power_supply*) ;

__attribute__((used)) static void devm_power_supply_release(struct device *dev, void *res)
{
 struct power_supply **psy = res;

 power_supply_unregister(*psy);
}
