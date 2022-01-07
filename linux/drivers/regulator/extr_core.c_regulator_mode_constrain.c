
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {unsigned int valid_modes_mask; } ;


 int EINVAL ;
 int EPERM ;
 int REGULATOR_CHANGE_MODE ;




 int rdev_err (struct regulator_dev*,char*,...) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

__attribute__((used)) static int regulator_mode_constrain(struct regulator_dev *rdev,
        unsigned int *mode)
{
 switch (*mode) {
 case 131:
 case 129:
 case 130:
 case 128:
  break;
 default:
  rdev_err(rdev, "invalid mode %x specified\n", *mode);
  return -EINVAL;
 }

 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_MODE)) {
  rdev_err(rdev, "mode operation not allowed\n");
  return -EPERM;
 }




 while (*mode) {
  if (rdev->constraints->valid_modes_mask & *mode)
   return 0;
  *mode /= 2;
 }

 return -EINVAL;
}
