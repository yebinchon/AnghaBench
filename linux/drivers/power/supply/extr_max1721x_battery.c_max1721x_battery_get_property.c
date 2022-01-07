
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct max17211_device_info {int SerialNumber; int regmap; int ManufacturerName; int DeviceName; scalar_t__ rsense; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int MAX1721X_REG_DEV_STR ;
 int MAX1721X_REG_MFG_STR ;
 int MAX1721X_REG_SER_HEX ;
 unsigned int MAX172XX_BAT_PRESENT ;
 int MAX172XX_REG_AVGCURRENT ;
 int MAX172XX_REG_BATT ;
 int MAX172XX_REG_CURRENT ;
 int MAX172XX_REG_DESIGNCAP ;
 int MAX172XX_REG_REPCAP ;
 int MAX172XX_REG_REPSOC ;
 int MAX172XX_REG_STATUS ;
 int MAX172XX_REG_TEMP ;
 int MAX172XX_REG_TTE ;
 int MAX172XX_REG_TTF ;
 void* max172xx_capacity_to_ps (unsigned int) ;
 int max172xx_current_to_voltage (unsigned int) ;
 int max172xx_percent_to_ps (unsigned int) ;
 int max172xx_temperature_to_ps (unsigned int) ;
 void* max172xx_time_to_ps (unsigned int) ;
 int max172xx_voltage_to_ps (unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct max17211_device_info* to_device_info (struct power_supply*) ;

__attribute__((used)) static int max1721x_battery_get_property(struct power_supply *psy,
 enum power_supply_property psp,
 union power_supply_propval *val)
{
 struct max17211_device_info *info = to_device_info(psy);
 unsigned int reg = 0;
 int ret = 0;

 switch (psp) {
 case 133:





  val->intval =
   regmap_read(info->regmap, MAX172XX_REG_STATUS,
   &reg) ? 0 : !(reg & MAX172XX_BAT_PRESENT);
  break;
 case 140:
  ret = regmap_read(info->regmap, MAX172XX_REG_REPSOC, &reg);
  val->intval = max172xx_percent_to_ps(reg);
  break;
 case 128:
  ret = regmap_read(info->regmap, MAX172XX_REG_BATT, &reg);
  val->intval = max172xx_voltage_to_ps(reg);
  break;
 case 138:
  ret = regmap_read(info->regmap, MAX172XX_REG_DESIGNCAP, &reg);
  val->intval = max172xx_capacity_to_ps(reg);
  break;
 case 139:
  ret = regmap_read(info->regmap, MAX172XX_REG_REPCAP, &reg);
  val->intval = max172xx_capacity_to_ps(reg);
  break;
 case 130:
  ret = regmap_read(info->regmap, MAX172XX_REG_TTE, &reg);
  val->intval = max172xx_time_to_ps(reg);
  break;
 case 129:
  ret = regmap_read(info->regmap, MAX172XX_REG_TTF, &reg);
  val->intval = max172xx_time_to_ps(reg);
  break;
 case 131:
  ret = regmap_read(info->regmap, MAX172XX_REG_TEMP, &reg);
  val->intval = max172xx_temperature_to_ps(reg);
  break;

 case 136:
  ret = regmap_read(info->regmap, MAX172XX_REG_CURRENT, &reg);
  val->intval =
   max172xx_current_to_voltage(reg) / (int)info->rsense;
  break;
 case 137:
  ret = regmap_read(info->regmap, MAX172XX_REG_AVGCURRENT, &reg);
  val->intval =
   max172xx_current_to_voltage(reg) / (int)info->rsense;
  break;




 case 134:
  ret = regmap_read(info->regmap, MAX1721X_REG_DEV_STR, &reg);
  val->strval = info->DeviceName;
  break;
 case 135:
  ret = regmap_read(info->regmap, MAX1721X_REG_MFG_STR, &reg);
  val->strval = info->ManufacturerName;
  break;
 case 132:
  ret = regmap_read(info->regmap, MAX1721X_REG_SER_HEX, &reg);
  val->strval = info->SerialNumber;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
