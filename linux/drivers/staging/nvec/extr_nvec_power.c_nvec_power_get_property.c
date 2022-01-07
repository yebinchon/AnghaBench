
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct nvec_power {int on; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 struct nvec_power* dev_get_drvdata (int ) ;

__attribute__((used)) static int nvec_power_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct nvec_power *power = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 128:
  val->intval = power->on;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
