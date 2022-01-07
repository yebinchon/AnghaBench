
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int member_0; } ;
struct psy_am_i_supplied_data {int count; int psy; } ;
struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* get_property ) (struct power_supply*,int ,union power_supply_propval*) ;} ;


 int POWER_SUPPLY_PROP_ONLINE ;
 scalar_t__ __power_supply_is_supplied_by (struct power_supply*,int ) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int stub1 (struct power_supply*,int ,union power_supply_propval*) ;

__attribute__((used)) static int __power_supply_am_i_supplied(struct device *dev, void *_data)
{
 union power_supply_propval ret = {0,};
 struct power_supply *epsy = dev_get_drvdata(dev);
 struct psy_am_i_supplied_data *data = _data;

 if (__power_supply_is_supplied_by(epsy, data->psy)) {
  data->count++;
  if (!epsy->desc->get_property(epsy, POWER_SUPPLY_PROP_ONLINE,
     &ret))
   return ret.intval;
 }

 return 0;
}
