
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9211 {int chip_id; int regmap; } ;



 int DA9211_REG_BUCK_ILIM ;


 int EINVAL ;
 int* da9211_current_limits ;
 int* da9213_current_limits ;
 int* da9215_current_limits ;
 struct da9211* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int da9211_get_current_limit(struct regulator_dev *rdev)
{
 int id = rdev_get_id(rdev);
 struct da9211 *chip = rdev_get_drvdata(rdev);
 unsigned int data;
 int ret;
 const int *current_limits;

 switch (chip->chip_id) {
 case 130:
  current_limits = da9211_current_limits;
  break;
 case 129:
  current_limits = da9213_current_limits;
  break;
 case 128:
  current_limits = da9215_current_limits;
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_read(chip->regmap, DA9211_REG_BUCK_ILIM, &data);
 if (ret < 0)
  return ret;




 data = (data >> id*4) & 0x0F;
 return current_limits[data];
}
