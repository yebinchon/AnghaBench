
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9211 {int regmap; } ;


 int DA9211_BUCK_MODE_AUTO ;
 int DA9211_BUCK_MODE_SLEEP ;
 int DA9211_BUCK_MODE_SYNC ;
 scalar_t__ DA9211_REG_BUCKA_CONF ;



 struct da9211* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int da9211_buck_set_mode(struct regulator_dev *rdev,
     unsigned int mode)
{
 int id = rdev_get_id(rdev);
 struct da9211 *chip = rdev_get_drvdata(rdev);
 int val = 0;

 switch (mode) {
 case 130:
  val = DA9211_BUCK_MODE_SYNC;
  break;
 case 129:
  val = DA9211_BUCK_MODE_AUTO;
  break;
 case 128:
  val = DA9211_BUCK_MODE_SLEEP;
  break;
 }

 return regmap_update_bits(chip->regmap, DA9211_REG_BUCKA_CONF+id,
     0x03, val);
}
