
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int max_uV; int min_uV; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int EPERM ;
 int REGULATOR_CHANGE_VOLTAGE ;
 int rdev_err (struct regulator_dev*,char*,...) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

int regulator_check_voltage(struct regulator_dev *rdev,
       int *min_uV, int *max_uV)
{
 BUG_ON(*min_uV > *max_uV);

 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_VOLTAGE)) {
  rdev_err(rdev, "voltage operation not allowed\n");
  return -EPERM;
 }

 if (*max_uV > rdev->constraints->max_uV)
  *max_uV = rdev->constraints->max_uV;
 if (*min_uV < rdev->constraints->min_uV)
  *min_uV = rdev->constraints->min_uV;

 if (*min_uV > *max_uV) {
  rdev_err(rdev, "unsupportable voltage range: %d-%duV\n",
    *min_uV, *max_uV);
  return -EINVAL;
 }

 return 0;
}
