
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int max_uA; int min_uA; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int EPERM ;
 int REGULATOR_CHANGE_CURRENT ;
 int rdev_err (struct regulator_dev*,char*,...) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

__attribute__((used)) static int regulator_check_current_limit(struct regulator_dev *rdev,
     int *min_uA, int *max_uA)
{
 BUG_ON(*min_uA > *max_uA);

 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_CURRENT)) {
  rdev_err(rdev, "current operation not allowed\n");
  return -EPERM;
 }

 if (*max_uA > rdev->constraints->max_uA)
  *max_uA = rdev->constraints->max_uA;
 if (*min_uA < rdev->constraints->min_uA)
  *min_uA = rdev->constraints->min_uA;

 if (*min_uA > *max_uA) {
  rdev_err(rdev, "unsupportable current range: %d-%duA\n",
    *min_uA, *max_uA);
  return -EINVAL;
 }

 return 0;
}
