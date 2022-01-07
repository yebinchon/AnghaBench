
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regulation_constraints* constraints; } ;
struct regulation_constraints {int min_uV; int max_uV; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 int rdev_get_dev (struct regulator_dev*) ;

__attribute__((used)) static int ab8500_ext_set_voltage(struct regulator_dev *rdev, int min_uV,
      int max_uV, unsigned *selector)
{
 struct regulation_constraints *regu_constraints = rdev->constraints;

 if (!regu_constraints) {
  dev_err(rdev_get_dev(rdev), "No regulator constraints\n");
  return -EINVAL;
 }

 if (regu_constraints->min_uV == min_uV &&
     regu_constraints->max_uV == max_uV)
  return 0;

 dev_err(rdev_get_dev(rdev),
  "Requested min %duV max %duV != constrained min %duV max %duV\n",
  min_uV, max_uV,
  regu_constraints->min_uV, regu_constraints->max_uV);

 return -EINVAL;
}
