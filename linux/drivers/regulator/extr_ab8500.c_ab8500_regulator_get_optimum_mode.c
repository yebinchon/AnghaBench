
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct ab8500_regulator_info {int load_lp_uA; } ;


 unsigned int EINVAL ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int dev_err (int ,char*) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct ab8500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static unsigned int ab8500_regulator_get_optimum_mode(
  struct regulator_dev *rdev, int input_uV,
  int output_uV, int load_uA)
{
 unsigned int mode;

 struct ab8500_regulator_info *info = rdev_get_drvdata(rdev);

 if (info == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator info null pointer\n");
  return -EINVAL;
 }

 if (load_uA <= info->load_lp_uA)
  mode = REGULATOR_MODE_IDLE;
 else
  mode = REGULATOR_MODE_NORMAL;

 return mode;
}
