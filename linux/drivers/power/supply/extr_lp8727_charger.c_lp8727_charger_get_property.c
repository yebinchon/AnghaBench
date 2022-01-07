
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_3__ {int parent; } ;
struct power_supply {TYPE_2__* desc; TYPE_1__ dev; } ;
struct lp8727_chg {int devid; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int POWER_SUPPLY_PROP_ONLINE ;
 struct lp8727_chg* dev_get_drvdata (int ) ;
 int lp8727_is_charger_attached (int ,int ) ;

__attribute__((used)) static int lp8727_charger_get_property(struct power_supply *psy,
           enum power_supply_property psp,
           union power_supply_propval *val)
{
 struct lp8727_chg *pchg = dev_get_drvdata(psy->dev.parent);

 if (psp != POWER_SUPPLY_PROP_ONLINE)
  return -EINVAL;

 val->intval = lp8727_is_charger_attached(psy->desc->name, pchg->devid);

 return 0;
}
