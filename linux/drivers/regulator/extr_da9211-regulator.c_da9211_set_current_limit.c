
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9211 {int chip_id; int regmap; } ;


 int ARRAY_SIZE (int*) ;

 int DA9211_REG_BUCK_ILIM ;


 int EINVAL ;
 int* da9211_current_limits ;
 int* da9213_current_limits ;
 int* da9215_current_limits ;
 struct da9211* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int da9211_set_current_limit(struct regulator_dev *rdev, int min,
        int max)
{
 int id = rdev_get_id(rdev);
 struct da9211 *chip = rdev_get_drvdata(rdev);
 int i, max_size;
 const int *current_limits;

 switch (chip->chip_id) {
 case 130:
  current_limits = da9211_current_limits;
  max_size = ARRAY_SIZE(da9211_current_limits)-1;
  break;
 case 129:
  current_limits = da9213_current_limits;
  max_size = ARRAY_SIZE(da9213_current_limits)-1;
  break;
 case 128:
  current_limits = da9215_current_limits;
  max_size = ARRAY_SIZE(da9215_current_limits)-1;
  break;
 default:
  return -EINVAL;
 }


 for (i = max_size; i >= 0; i--) {
  if (min <= current_limits[i] &&
      max >= current_limits[i]) {
    return regmap_update_bits(chip->regmap,
     DA9211_REG_BUCK_ILIM,
     (0x0F << id*4), (i << id*4));
  }
 }

 return -EINVAL;
}
