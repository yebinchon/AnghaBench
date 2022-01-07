
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct hi6421_regulator_info {int eco_microamp; } ;


 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 struct hi6421_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static unsigned int
hi6421_regulator_ldo_get_optimum_mode(struct regulator_dev *rdev,
   int input_uV, int output_uV, int load_uA)
{
 struct hi6421_regulator_info *info = rdev_get_drvdata(rdev);

 if (load_uA > info->eco_microamp)
  return REGULATOR_MODE_NORMAL;

 return REGULATOR_MODE_IDLE;
}
