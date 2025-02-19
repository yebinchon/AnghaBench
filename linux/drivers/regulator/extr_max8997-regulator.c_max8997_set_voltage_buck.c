
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voltage_map_desc {scalar_t__ min; int step; scalar_t__ max; } ;
struct regulator_dev {int dev; } ;
struct max8997_data {int ignore_gpiodvs_side_effect; int buck125_gpioindex; int buck5_gpiodvs; int buck2_gpiodvs; int buck1_gpiodvs; } ;


 int EINVAL ;
 int INT_MAX ;



 int MAX8997_BUCK7 ;
 int dev_warn (int *,char*,int,int) ;
 int max8997_assess_side_effect (struct regulator_dev*,int,int*) ;
 int max8997_get_voltage_proper_val (struct voltage_map_desc const*,int,int) ;
 int max8997_set_gpio (struct max8997_data*) ;
 int max8997_set_voltage_ldobuck (struct regulator_dev*,int,int,unsigned int*) ;
 struct max8997_data* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 struct voltage_map_desc** reg_voltage_map ;

__attribute__((used)) static int max8997_set_voltage_buck(struct regulator_dev *rdev,
  int min_uV, int max_uV, unsigned *selector)
{
 struct max8997_data *max8997 = rdev_get_drvdata(rdev);
 int rid = rdev_get_id(rdev);
 const struct voltage_map_desc *desc;
 int new_val, new_idx, damage, tmp_val, tmp_idx, tmp_dmg;
 bool gpio_dvs_mode = 0;

 if (rid < 130 || rid > MAX8997_BUCK7)
  return -EINVAL;

 switch (rid) {
 case 130:
  if (max8997->buck1_gpiodvs)
   gpio_dvs_mode = 1;
  break;
 case 129:
  if (max8997->buck2_gpiodvs)
   gpio_dvs_mode = 1;
  break;
 case 128:
  if (max8997->buck5_gpiodvs)
   gpio_dvs_mode = 1;
  break;
 }

 if (!gpio_dvs_mode)
  return max8997_set_voltage_ldobuck(rdev, min_uV, max_uV,
      selector);

 desc = reg_voltage_map[rid];
 new_val = max8997_get_voltage_proper_val(desc, min_uV, max_uV);
 if (new_val < 0)
  return new_val;

 tmp_dmg = INT_MAX;
 tmp_idx = -1;
 tmp_val = -1;
 do {
  damage = max8997_assess_side_effect(rdev, new_val, &new_idx);
  if (damage == 0)
   goto out;

  if (tmp_dmg > damage) {
   tmp_idx = new_idx;
   tmp_val = new_val;
   tmp_dmg = damage;
  }

  new_val++;
 } while (desc->min + desc->step * new_val <= desc->max);

 new_idx = tmp_idx;
 new_val = tmp_val;

 if (max8997->ignore_gpiodvs_side_effect == 0)
  return -EINVAL;

 dev_warn(&rdev->dev,
  "MAX8997 GPIO-DVS Side Effect Warning: GPIO SET:  %d -> %d\n",
  max8997->buck125_gpioindex, tmp_idx);

out:
 if (new_idx < 0 || new_val < 0)
  return -EINVAL;

 max8997->buck125_gpioindex = new_idx;
 max8997_set_gpio(max8997);
 *selector = new_val;

 return 0;
}
