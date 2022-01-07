
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp288_chrg_info {TYPE_1__* pdev; int max_cv; int max_cc; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int dev; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;



 int axp288_charger_set_cc (struct axp288_chrg_info*,int) ;
 int axp288_charger_set_cv (struct axp288_chrg_info*,int) ;
 int axp288_charger_set_vbus_inlmt (struct axp288_chrg_info*,int ) ;
 int dev_warn (int *,char*) ;
 int min (int ,int ) ;
 struct axp288_chrg_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int axp288_charger_usb_set_property(struct power_supply *psy,
        enum power_supply_property psp,
        const union power_supply_propval *val)
{
 struct axp288_chrg_info *info = power_supply_get_drvdata(psy);
 int ret = 0;
 int scaled_val;

 switch (psp) {
 case 130:
  scaled_val = min(val->intval, info->max_cc);
  scaled_val = DIV_ROUND_CLOSEST(scaled_val, 1000);
  ret = axp288_charger_set_cc(info, scaled_val);
  if (ret < 0)
   dev_warn(&info->pdev->dev, "set charge current failed\n");
  break;
 case 129:
  scaled_val = min(val->intval, info->max_cv);
  scaled_val = DIV_ROUND_CLOSEST(scaled_val, 1000);
  ret = axp288_charger_set_cv(info, scaled_val);
  if (ret < 0)
   dev_warn(&info->pdev->dev, "set charge voltage failed\n");
  break;
 case 128:
  ret = axp288_charger_set_vbus_inlmt(info, val->intval);
  if (ret < 0)
   dev_warn(&info->pdev->dev, "set input current limit failed\n");
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
