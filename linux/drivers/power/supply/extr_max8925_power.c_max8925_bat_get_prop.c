
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct max8925_power_info {int bat_online; int ac_online; int usb_online; int gpm; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODATA ;
 int ENODEV ;
 int MAX8925_CHG_STATUS ;
 int MAX8925_CHG_STAT_EN_MASK ;
 int MAX8925_CHG_STAT_MODE_MASK ;
 int MEASURE_ISNS ;
 int MEASURE_VMBATT ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;





 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 struct max8925_power_info* dev_get_drvdata (int ) ;
 int max8925_reg_read (int ,int ) ;
 int start_measure (struct max8925_power_info*,int ) ;

__attribute__((used)) static int max8925_bat_get_prop(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct max8925_power_info *info = dev_get_drvdata(psy->dev.parent);
 int ret = 0;

 switch (psp) {
 case 130:
  val->intval = info->bat_online;
  break;
 case 128:
  if (info->bat_online) {
   ret = start_measure(info, MEASURE_VMBATT);
   if (ret >= 0) {
    val->intval = ret * 2000;
    ret = 0;
    break;
   }
  }
  ret = -ENODATA;
  break;
 case 131:
  if (info->bat_online) {
   ret = start_measure(info, MEASURE_ISNS);
   if (ret >= 0) {

    ret = ((ret * 6250) - 3125) ;
    val->intval = 0;
    if (ret > 0)
     val->intval = ret;
    ret = 0;
    break;
   }
  }
  ret = -ENODATA;
  break;
 case 132:
  if (!info->bat_online) {
   ret = -ENODATA;
   break;
  }
  ret = max8925_reg_read(info->gpm, MAX8925_CHG_STATUS);
  ret = (ret & MAX8925_CHG_STAT_MODE_MASK) >> 2;
  switch (ret) {
  case 1:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
   break;
  case 0:
  case 2:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
   break;
  case 3:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
   break;
  }
  ret = 0;
  break;
 case 129:
  if (!info->bat_online) {
   ret = -ENODATA;
   break;
  }
  ret = max8925_reg_read(info->gpm, MAX8925_CHG_STATUS);
  if (info->usb_online || info->ac_online) {
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
   if (ret & MAX8925_CHG_STAT_EN_MASK)
    val->intval = POWER_SUPPLY_STATUS_CHARGING;
  } else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  ret = 0;
  break;
 default:
  ret = -ENODEV;
  break;
 }
 return ret;
}
