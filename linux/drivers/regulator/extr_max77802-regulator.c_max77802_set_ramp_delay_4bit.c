
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int enable_reg; } ;


 int ARRAY_SIZE (int ) ;
 int MAX77802_RAMP_RATE_MASK_4BIT ;
 unsigned int MAX77802_RAMP_RATE_SHIFT_4BIT ;
 unsigned int max77802_find_ramp_value (struct regulator_dev*,int ,int ,int) ;
 int ramp_table_77802_4bit ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77802_set_ramp_delay_4bit(struct regulator_dev *rdev,
         int ramp_delay)
{
 unsigned int ramp_value;

 ramp_value = max77802_find_ramp_value(rdev, ramp_table_77802_4bit,
    ARRAY_SIZE(ramp_table_77802_4bit), ramp_delay);

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      MAX77802_RAMP_RATE_MASK_4BIT,
      ramp_value << MAX77802_RAMP_RATE_SHIFT_4BIT);
}
