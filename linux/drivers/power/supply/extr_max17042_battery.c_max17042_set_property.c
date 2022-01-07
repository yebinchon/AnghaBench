
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u32 ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;
typedef int int8_t ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int MAX17042_TALRT_Th ;


 struct max17042_chip* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int max17042_set_property(struct power_supply *psy,
       enum power_supply_property psp,
       const union power_supply_propval *val)
{
 struct max17042_chip *chip = power_supply_get_drvdata(psy);
 struct regmap *map = chip->regmap;
 int ret = 0;
 u32 data;
 int8_t temp;

 switch (psp) {
 case 128:
  ret = regmap_read(map, MAX17042_TALRT_Th, &data);
  if (ret < 0)
   return ret;


  temp = val->intval / 10;

  if (temp >= (int8_t)(data >> 8))
   temp = (int8_t)(data >> 8) - 1;

  data = (data & 0xff00) + temp;
  ret = regmap_write(map, MAX17042_TALRT_Th, data);
  break;
 case 129:
  ret = regmap_read(map, MAX17042_TALRT_Th, &data);
  if (ret < 0)
   return ret;


  temp = val->intval / 10;

  if (temp <= (int8_t)(data & 0xff))
   temp = (int8_t)(data & 0xff) + 1;

  data = (data & 0xff) + (temp << 8);
  ret = regmap_write(map, MAX17042_TALRT_Th, data);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
