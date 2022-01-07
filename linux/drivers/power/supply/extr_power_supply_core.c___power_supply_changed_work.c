
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* external_power_changed ) (struct power_supply*) ;} ;


 scalar_t__ __power_supply_is_supplied_by (struct power_supply*,struct power_supply*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int stub1 (struct power_supply*) ;

__attribute__((used)) static int __power_supply_changed_work(struct device *dev, void *data)
{
 struct power_supply *psy = data;
 struct power_supply *pst = dev_get_drvdata(dev);

 if (__power_supply_is_supplied_by(psy, pst)) {
  if (pst->desc->external_power_changed)
   pst->desc->external_power_changed(pst);
 }

 return 0;
}
