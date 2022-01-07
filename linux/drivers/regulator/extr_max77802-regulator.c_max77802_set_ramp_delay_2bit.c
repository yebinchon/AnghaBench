
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; int dev; } ;
struct TYPE_2__ {int enable_reg; int name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int MAX77802_BUCK4 ;
 int MAX77802_RAMP_RATE_MASK_2BIT ;
 unsigned int MAX77802_RAMP_RATE_SHIFT_2BIT ;
 int dev_warn (int *,char*,int ) ;
 unsigned int max77802_find_ramp_value (struct regulator_dev*,int ,int ,int) ;
 int ramp_table_77802_2bit ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77802_set_ramp_delay_2bit(struct regulator_dev *rdev,
     int ramp_delay)
{
 int id = rdev_get_id(rdev);
 unsigned int ramp_value;

 if (id > MAX77802_BUCK4) {
  dev_warn(&rdev->dev,
    "%s: regulator: ramp delay not supported\n",
    rdev->desc->name);
  return -EINVAL;
 }
 ramp_value = max77802_find_ramp_value(rdev, ramp_table_77802_2bit,
    ARRAY_SIZE(ramp_table_77802_2bit), ramp_delay);

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      MAX77802_RAMP_RATE_MASK_2BIT,
      ramp_value << MAX77802_RAMP_RATE_SHIFT_2BIT);
}
