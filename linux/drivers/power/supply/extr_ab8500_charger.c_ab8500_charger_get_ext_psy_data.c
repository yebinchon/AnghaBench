
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct ux500_charger {struct power_supply* psy; } ;
struct power_supply {TYPE_1__* desc; int num_supplicants; scalar_t__ supplied_to; } ;
struct device {int dummy; } ;
struct ab8500_charger {int vbat; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int num_properties; int* properties; int type; int name; } ;




 struct power_supply* dev_get_drvdata (struct device*) ;
 int match_string (char const**,int ,int ) ;
 scalar_t__ power_supply_get_property (struct power_supply*,int,union power_supply_propval*) ;
 struct ab8500_charger* to_ab8500_charger_usb_device_info (struct ux500_charger*) ;

__attribute__((used)) static int ab8500_charger_get_ext_psy_data(struct device *dev, void *data)
{
 struct power_supply *psy;
 struct power_supply *ext = dev_get_drvdata(dev);
 const char **supplicants = (const char **)ext->supplied_to;
 struct ab8500_charger *di;
 union power_supply_propval ret;
 int j;
 struct ux500_charger *usb_chg;

 usb_chg = (struct ux500_charger *)data;
 psy = usb_chg->psy;

 di = to_ab8500_charger_usb_device_info(usb_chg);


 j = match_string(supplicants, ext->num_supplicants, psy->desc->name);
 if (j < 0)
  return 0;


 for (j = 0; j < ext->desc->num_properties; j++) {
  enum power_supply_property prop;
  prop = ext->desc->properties[j];

  if (power_supply_get_property(ext, prop, &ret))
   continue;

  switch (prop) {
  case 129:
   switch (ext->desc->type) {
   case 128:
    di->vbat = ret.intval / 1000;
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
 }
 return 0;
}
