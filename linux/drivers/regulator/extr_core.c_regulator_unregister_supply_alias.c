
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias {int list; } ;
struct device {int dummy; } ;


 int kfree (struct regulator_supply_alias*) ;
 int list_del (int *) ;
 struct regulator_supply_alias* regulator_find_supply_alias (struct device*,char const*) ;

void regulator_unregister_supply_alias(struct device *dev, const char *id)
{
 struct regulator_supply_alias *map;

 map = regulator_find_supply_alias(dev, id);
 if (map) {
  list_del(&map->list);
  kfree(map);
 }
}
