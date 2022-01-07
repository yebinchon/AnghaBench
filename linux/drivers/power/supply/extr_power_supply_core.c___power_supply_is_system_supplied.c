
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int member_0; } ;
struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int (* get_property ) (struct power_supply*,int ,union power_supply_propval*) ;} ;


 int POWER_SUPPLY_PROP_ONLINE ;
 scalar_t__ POWER_SUPPLY_TYPE_BATTERY ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int stub1 (struct power_supply*,int ,union power_supply_propval*) ;

__attribute__((used)) static int __power_supply_is_system_supplied(struct device *dev, void *data)
{
 union power_supply_propval ret = {0,};
 struct power_supply *psy = dev_get_drvdata(dev);
 unsigned int *count = data;

 (*count)++;
 if (psy->desc->type != POWER_SUPPLY_TYPE_BATTERY)
  if (!psy->desc->get_property(psy, POWER_SUPPLY_PROP_ONLINE,
     &ret))
   return ret.intval;

 return 0;
}
