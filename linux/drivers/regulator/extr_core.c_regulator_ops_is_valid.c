
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int valid_ops_mask; } ;


 int rdev_err (struct regulator_dev*,char*) ;

__attribute__((used)) static bool regulator_ops_is_valid(struct regulator_dev *rdev, int ops)
{
 if (!rdev->constraints) {
  rdev_err(rdev, "no constraints\n");
  return 0;
 }

 if (rdev->constraints->valid_ops_mask & ops)
  return 1;

 return 0;
}
