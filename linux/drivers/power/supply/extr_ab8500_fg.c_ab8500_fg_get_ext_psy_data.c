
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {TYPE_3__* desc; int num_supplicants; scalar_t__ supplied_to; } ;
struct device {int dummy; } ;
struct abx500_battery_type {int charge_full_design; int nominal_voltage; } ;
struct TYPE_8__ {int charging; int fully_charged; int force_full; int batt_id_received; int batt_unknown; } ;
struct TYPE_6__ {int max_mah; int mah; int max_mah_design; } ;
struct ab8500_fg {int bat_temp; TYPE_4__ flags; int vbat_nom; TYPE_2__ bat_cap; TYPE_1__* bm; int fg_work; int fg_wq; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_7__ {int num_properties; int* properties; int type; int name; } ;
struct TYPE_5__ {size_t batt_id; struct abx500_battery_type* bat_type; int capacity_scaling; } ;


 size_t BATTERY_UNKNOWN ;
 int MILLI_TO_MICRO ;
 int ab8500_fg_update_cap_scalers (struct ab8500_fg*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int match_string (char const**,int ,int ) ;
 struct ab8500_fg* power_supply_get_drvdata (struct power_supply*) ;
 scalar_t__ power_supply_get_property (struct power_supply*,int,union power_supply_propval*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int ab8500_fg_get_ext_psy_data(struct device *dev, void *data)
{
 struct power_supply *psy;
 struct power_supply *ext = dev_get_drvdata(dev);
 const char **supplicants = (const char **)ext->supplied_to;
 struct ab8500_fg *di;
 union power_supply_propval ret;
 int j;

 psy = (struct power_supply *)data;
 di = power_supply_get_drvdata(psy);





 j = match_string(supplicants, ext->num_supplicants, psy->desc->name);
 if (j < 0)
  return 0;


 for (j = 0; j < ext->desc->num_properties; j++) {
  enum power_supply_property prop;
  prop = ext->desc->properties[j];

  if (power_supply_get_property(ext, prop, &ret))
   continue;

  switch (prop) {
  case 136:
   switch (ext->desc->type) {
   case 128:
    switch (ret.intval) {
    case 129:
    case 132:
    case 130:
     if (!di->flags.charging)
      break;
     di->flags.charging = 0;
     di->flags.fully_charged = 0;
     if (di->bm->capacity_scaling)
      ab8500_fg_update_cap_scalers(di);
     queue_work(di->fg_wq, &di->fg_work);
     break;
    case 131:
     if (di->flags.fully_charged)
      break;
     di->flags.fully_charged = 1;
     di->flags.force_full = 1;

     di->bat_cap.max_mah = di->bat_cap.mah;
     queue_work(di->fg_wq, &di->fg_work);
     break;
    case 133:
     if (di->flags.charging &&
      !di->flags.fully_charged)
      break;
     di->flags.charging = 1;
     di->flags.fully_charged = 0;
     if (di->bm->capacity_scaling)
      ab8500_fg_update_cap_scalers(di);
     queue_work(di->fg_wq, &di->fg_work);
     break;
    };
   default:
    break;
   };
   break;
  case 135:
   switch (ext->desc->type) {
   case 128:
    if (!di->flags.batt_id_received &&
        di->bm->batt_id != BATTERY_UNKNOWN) {
     const struct abx500_battery_type *b;

     b = &(di->bm->bat_type[di->bm->batt_id]);

     di->flags.batt_id_received = 1;

     di->bat_cap.max_mah_design =
      MILLI_TO_MICRO *
      b->charge_full_design;

     di->bat_cap.max_mah =
      di->bat_cap.max_mah_design;

     di->vbat_nom = b->nominal_voltage;
    }

    if (ret.intval)
     di->flags.batt_unknown = 0;
    else
     di->flags.batt_unknown = 1;
    break;
   default:
    break;
   }
   break;
  case 134:
   switch (ext->desc->type) {
   case 128:
    if (di->flags.batt_id_received)
     di->bat_temp = ret.intval;
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
