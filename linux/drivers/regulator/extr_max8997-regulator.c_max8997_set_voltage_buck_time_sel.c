
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voltage_map_desc {unsigned int step; } ;
struct regulator_dev {int dummy; } ;
struct max8997_data {int ramp_delay; int buck5_gpiodvs; int buck2_gpiodvs; int buck1_gpiodvs; } ;


 int DIV_ROUND_UP (unsigned int,int) ;




 struct max8997_data* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 struct voltage_map_desc** reg_voltage_map ;

__attribute__((used)) static int max8997_set_voltage_buck_time_sel(struct regulator_dev *rdev,
      unsigned int old_selector,
      unsigned int new_selector)
{
 struct max8997_data *max8997 = rdev_get_drvdata(rdev);
 int rid = rdev_get_id(rdev);
 const struct voltage_map_desc *desc = reg_voltage_map[rid];


 if (old_selector >= new_selector)
  return 0;


 switch (rid) {
 case 131:
  if (max8997->buck1_gpiodvs)
   return 0;
  break;
 case 130:
  if (max8997->buck2_gpiodvs)
   return 0;
  break;
 case 128:
  if (max8997->buck5_gpiodvs)
   return 0;
  break;
 }

 switch (rid) {
 case 131:
 case 130:
 case 129:
 case 128:
  return DIV_ROUND_UP(desc->step * (new_selector - old_selector),
        max8997->ramp_delay * 1000);
 }

 return 0;
}
