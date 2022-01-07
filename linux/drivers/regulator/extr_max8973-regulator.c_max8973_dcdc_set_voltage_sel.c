
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int curr_vout_reg; int curr_gpio_val; unsigned int* curr_vout_val; int dvs_gpio; int dev; int regmap; } ;


 int MAX8973_VOUT_MASK ;
 int dev_err (int ,char*,int,int) ;
 int find_voltage_set_register (struct max8973_chip*,unsigned int,int*,int*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int,int ,unsigned int) ;

__attribute__((used)) static int max8973_dcdc_set_voltage_sel(struct regulator_dev *rdev,
      unsigned vsel)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 int ret;
 bool found = 0;
 int vout_reg = max->curr_vout_reg;
 int gpio_val = max->curr_gpio_val;





 if (gpio_is_valid(max->dvs_gpio))
  found = find_voltage_set_register(max, vsel,
     &vout_reg, &gpio_val);

 if (!found) {
  ret = regmap_update_bits(max->regmap, vout_reg,
     MAX8973_VOUT_MASK, vsel);
  if (ret < 0) {
   dev_err(max->dev, "register %d update failed, err %d\n",
     vout_reg, ret);
   return ret;
  }
  max->curr_vout_reg = vout_reg;
  max->curr_vout_val[gpio_val] = vsel;
 }


 if (gpio_is_valid(max->dvs_gpio)) {
  gpio_set_value_cansleep(max->dvs_gpio, gpio_val & 0x1);
  max->curr_gpio_val = gpio_val;
 }
 return 0;
}
