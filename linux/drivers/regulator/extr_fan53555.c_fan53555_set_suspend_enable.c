
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct fan53555_device_info {int sleep_reg; } ;


 int VSEL_BUCK_EN ;
 struct fan53555_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int fan53555_set_suspend_enable(struct regulator_dev *rdev)
{
 struct fan53555_device_info *di = rdev_get_drvdata(rdev);

 return regmap_update_bits(rdev->regmap, di->sleep_reg,
      VSEL_BUCK_EN, VSEL_BUCK_EN);
}
