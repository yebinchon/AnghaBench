
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int member_0; } ;
struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* get_property ) (struct power_supply*,int ,union power_supply_propval*) ;} ;


 int POWER_SUPPLY_PROP_CURRENT_MAX ;
 scalar_t__ __power_supply_is_supplied_by (struct power_supply*,struct power_supply*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int stub1 (struct power_supply*,int ,union power_supply_propval*) ;

__attribute__((used)) static int __power_supply_get_supplier_max_current(struct device *dev,
         void *data)
{
 union power_supply_propval ret = {0,};
 struct power_supply *epsy = dev_get_drvdata(dev);
 struct power_supply *psy = data;

 if (__power_supply_is_supplied_by(epsy, psy))
  if (!epsy->desc->get_property(epsy,
           POWER_SUPPLY_PROP_CURRENT_MAX,
           &ret))
   return ret.intval;

 return 0;
}
