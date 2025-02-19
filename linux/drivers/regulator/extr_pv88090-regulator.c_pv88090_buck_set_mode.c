
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct pv88090_regulator {int conf; } ;


 int EINVAL ;
 int PV88090_BUCK1_MODE_MASK ;
 int PV88090_BUCK_MODE_AUTO ;
 int PV88090_BUCK_MODE_SLEEP ;
 int PV88090_BUCK_MODE_SYNC ;



 struct pv88090_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int pv88090_buck_set_mode(struct regulator_dev *rdev,
     unsigned int mode)
{
 struct pv88090_regulator *info = rdev_get_drvdata(rdev);
 int val = 0;

 switch (mode) {
 case 130:
  val = PV88090_BUCK_MODE_SYNC;
  break;
 case 129:
  val = PV88090_BUCK_MODE_AUTO;
  break;
 case 128:
  val = PV88090_BUCK_MODE_SLEEP;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, info->conf,
     PV88090_BUCK1_MODE_MASK, val);
}
