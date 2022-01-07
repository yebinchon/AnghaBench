
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
typedef void* u64 ;
typedef int u32 ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct max17042_chip {TYPE_1__* pdata; int chip_type; int init_complete; struct regmap* regmap; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int r_sns; int temp_min; int temp_max; int enable_current_sense; } ;


 int EAGAIN ;
 int EINVAL ;
 int MAX17042_AvgCurrent ;
 int MAX17042_AvgVCELL ;
 int MAX17042_Current ;
 int MAX17042_Cycles ;
 int MAX17042_DesignCap ;
 int MAX17042_FullCAP ;
 int MAX17042_MinMaxVolt ;
 int MAX17042_OCVInternal ;
 int MAX17042_QH ;
 int MAX17042_RepCap ;
 int MAX17042_RepSOC ;
 int MAX17042_STATUS ;
 int MAX17042_STATUS_BattAbsent ;
 int MAX17042_TALRT_Th ;
 int MAX17042_VCELL ;
 int MAX17042_V_empty ;
 int MAX17047_V_empty ;
 int MAXIM_DEVICE_TYPE_MAX17042 ;
 int POWER_SUPPLY_SCOPE_SYSTEM ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int do_div (void*,int) ;
 int max17042_get_battery_health (struct max17042_chip*,int*) ;
 int max17042_get_status (struct max17042_chip*,int*) ;
 int max17042_get_temperature (struct max17042_chip*,int*) ;
 struct max17042_chip* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int max17042_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct max17042_chip *chip = power_supply_get_drvdata(psy);
 struct regmap *map = chip->regmap;
 int ret;
 u32 data;
 u64 data64;

 if (!chip->init_complete)
  return -EAGAIN;

 switch (psp) {
 case 140:
  ret = max17042_get_status(chip, &val->intval);
  if (ret < 0)
   return ret;
  break;
 case 142:
  ret = regmap_read(map, MAX17042_STATUS, &data);
  if (ret < 0)
   return ret;

  if (data & MAX17042_STATUS_BattAbsent)
   val->intval = 0;
  else
   val->intval = 1;
  break;
 case 139:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 144:
  ret = regmap_read(map, MAX17042_Cycles, &data);
  if (ret < 0)
   return ret;

  val->intval = data;
  break;
 case 132:
  ret = regmap_read(map, MAX17042_MinMaxVolt, &data);
  if (ret < 0)
   return ret;

  val->intval = data >> 8;
  val->intval *= 20000;
  break;
 case 131:
  ret = regmap_read(map, MAX17042_MinMaxVolt, &data);
  if (ret < 0)
   return ret;

  val->intval = (data & 0xff) * 20000;
  break;
 case 130:
  if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042)
   ret = regmap_read(map, MAX17042_V_empty, &data);
  else
   ret = regmap_read(map, MAX17047_V_empty, &data);
  if (ret < 0)
   return ret;

  val->intval = data >> 7;
  val->intval *= 10000;
  break;
 case 129:
  ret = regmap_read(map, MAX17042_VCELL, &data);
  if (ret < 0)
   return ret;

  val->intval = data * 625 / 8;
  break;
 case 133:
  ret = regmap_read(map, MAX17042_AvgVCELL, &data);
  if (ret < 0)
   return ret;

  val->intval = data * 625 / 8;
  break;
 case 128:
  ret = regmap_read(map, MAX17042_OCVInternal, &data);
  if (ret < 0)
   return ret;

  val->intval = data * 625 / 8;
  break;
 case 151:
  ret = regmap_read(map, MAX17042_RepSOC, &data);
  if (ret < 0)
   return ret;

  val->intval = data >> 8;
  break;
 case 148:
  ret = regmap_read(map, MAX17042_DesignCap, &data);
  if (ret < 0)
   return ret;

  data64 = data * 5000000ll;
  do_div(data64, chip->pdata->r_sns);
  val->intval = data64;
  break;
 case 149:
  ret = regmap_read(map, MAX17042_FullCAP, &data);
  if (ret < 0)
   return ret;

  data64 = data * 5000000ll;
  do_div(data64, chip->pdata->r_sns);
  val->intval = data64;
  break;
 case 147:
  ret = regmap_read(map, MAX17042_RepCap, &data);
  if (ret < 0)
   return ret;

  data64 = data * 5000000ll;
  do_div(data64, chip->pdata->r_sns);
  val->intval = data64;
  break;
 case 150:
  ret = regmap_read(map, MAX17042_QH, &data);
  if (ret < 0)
   return ret;

  val->intval = data * 1000 / 2;
  break;
 case 138:
  ret = max17042_get_temperature(chip, &val->intval);
  if (ret < 0)
   return ret;
  break;
 case 136:
  ret = regmap_read(map, MAX17042_TALRT_Th, &data);
  if (ret < 0)
   return ret;

  val->intval = sign_extend32(data & 0xff, 7) * 10;
  break;
 case 137:
  ret = regmap_read(map, MAX17042_TALRT_Th, &data);
  if (ret < 0)
   return ret;

  val->intval = sign_extend32(data >> 8, 7) * 10;
  break;
 case 134:
  val->intval = chip->pdata->temp_min;
  break;
 case 135:
  val->intval = chip->pdata->temp_max;
  break;
 case 143:
  ret = max17042_get_battery_health(chip, &val->intval);
  if (ret < 0)
   return ret;
  break;
 case 141:
  val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
  break;
 case 145:
  if (chip->pdata->enable_current_sense) {
   ret = regmap_read(map, MAX17042_Current, &data);
   if (ret < 0)
    return ret;

   val->intval = sign_extend32(data, 15);
   val->intval *= 1562500 / chip->pdata->r_sns;
  } else {
   return -EINVAL;
  }
  break;
 case 146:
  if (chip->pdata->enable_current_sense) {
   ret = regmap_read(map, MAX17042_AvgCurrent, &data);
   if (ret < 0)
    return ret;

   val->intval = sign_extend32(data, 15);
   val->intval *= 1562500 / chip->pdata->r_sns;
  } else {
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
