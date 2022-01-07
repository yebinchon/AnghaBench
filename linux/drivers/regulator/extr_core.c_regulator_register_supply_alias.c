
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias {char const* src_supply; char const* alias_supply; int list; struct device* alias_dev; struct device* src_dev; } ;
struct device {int dummy; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 struct regulator_supply_alias* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_info (char*,char const*,int ,char const*,int ) ;
 struct regulator_supply_alias* regulator_find_supply_alias (struct device*,char const*) ;
 int regulator_supply_alias_list ;

int regulator_register_supply_alias(struct device *dev, const char *id,
        struct device *alias_dev,
        const char *alias_id)
{
 struct regulator_supply_alias *map;

 map = regulator_find_supply_alias(dev, id);
 if (map)
  return -EEXIST;

 map = kzalloc(sizeof(struct regulator_supply_alias), GFP_KERNEL);
 if (!map)
  return -ENOMEM;

 map->src_dev = dev;
 map->src_supply = id;
 map->alias_dev = alias_dev;
 map->alias_supply = alias_id;

 list_add(&map->list, &regulator_supply_alias_list);

 pr_info("Adding alias for supply %s,%s -> %s,%s\n",
  id, dev_name(dev), alias_id, dev_name(alias_dev));

 return 0;
}
