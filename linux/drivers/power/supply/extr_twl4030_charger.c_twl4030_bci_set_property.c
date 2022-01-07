
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct twl4030_bci {int ac_cur; int usb_cur_target; } ;
struct TYPE_3__ {int parent; } ;
struct power_supply {TYPE_2__* desc; TYPE_1__ dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {int type; } ;


 int EINVAL ;

 int POWER_SUPPLY_TYPE_USB ;
 struct twl4030_bci* dev_get_drvdata (int ) ;
 int twl4030_charger_update_current (struct twl4030_bci*) ;

__attribute__((used)) static int twl4030_bci_set_property(struct power_supply *psy,
        enum power_supply_property psp,
        const union power_supply_propval *val)
{
 struct twl4030_bci *bci = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 128:
  if (psy->desc->type == POWER_SUPPLY_TYPE_USB)
   bci->usb_cur_target = val->intval;
  else
   bci->ac_cur = val->intval;
  twl4030_charger_update_current(bci);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
