
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct axp20x_dev {int variant; } ;
struct TYPE_2__ {int soft_start; } ;



 int AXP20X_LDO3 ;
 struct axp20x_dev* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_enable_regmap (struct regulator_dev*) ;
 int regulator_get_voltage_sel_regmap (struct regulator_dev*) ;
 int regulator_is_enabled_regmap (struct regulator_dev*) ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int axp20x_regulator_enable_regmap(struct regulator_dev *rdev)
{
 struct axp20x_dev *axp20x = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);

 switch (axp20x->variant) {
 case 128:
  if ((id == AXP20X_LDO3) &&
      rdev->constraints && rdev->constraints->soft_start) {
   int v_out;
   int ret;
   if (regulator_is_enabled_regmap(rdev))
    break;

   v_out = regulator_get_voltage_sel_regmap(rdev);
   if (v_out < 0)
    return v_out;

   if (v_out == 0)
    break;

   ret = regulator_set_voltage_sel_regmap(rdev, 0x00);





   usleep_range(1000, 5000);
   ret |= regulator_enable_regmap(rdev);
   ret |= regulator_set_voltage_sel_regmap(rdev, v_out);

   return ret;
  }
  break;
 default:

  break;
 }

 return regulator_enable_regmap(rdev);
}
