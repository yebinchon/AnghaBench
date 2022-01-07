
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct TYPE_2__ {int id_short; } ;
struct axp288_chrg_info {int cc; int max_cc; int cv; int max_cv; TYPE_1__ otg; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int axp288_charger_get_vbus_inlmt (struct axp288_chrg_info*) ;
 int axp288_charger_is_online (struct axp288_chrg_info*) ;
 int axp288_charger_is_present (struct axp288_chrg_info*) ;
 int axp288_get_charger_health (struct axp288_chrg_info*) ;
 struct axp288_chrg_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int axp288_charger_usb_get_property(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 struct axp288_chrg_info *info = power_supply_get_drvdata(psy);
 int ret;

 switch (psp) {
 case 128:

  if (info->otg.id_short) {
   val->intval = 0;
   break;
  }
  ret = axp288_charger_is_present(info);
  if (ret < 0)
   return ret;
  val->intval = ret;
  break;
 case 129:

  if (info->otg.id_short) {
   val->intval = 0;
   break;
  }
  ret = axp288_charger_is_online(info);
  if (ret < 0)
   return ret;
  val->intval = ret;
  break;
 case 131:
  val->intval = axp288_get_charger_health(info);
  break;
 case 135:
  val->intval = info->cc * 1000;
  break;
 case 134:
  val->intval = info->max_cc * 1000;
  break;
 case 133:
  val->intval = info->cv * 1000;
  break;
 case 132:
  val->intval = info->max_cv * 1000;
  break;
 case 130:
  ret = axp288_charger_get_vbus_inlmt(info);
  if (ret < 0)
   return ret;
  val->intval = ret;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
