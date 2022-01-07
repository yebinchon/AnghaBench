
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regulation_constraints* constraints; } ;
struct regulation_constraints {scalar_t__ min_uV; scalar_t__ max_uV; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int rdev_get_dev (struct regulator_dev*) ;

__attribute__((used)) static int ab8500_ext_list_voltage(struct regulator_dev *rdev,
       unsigned selector)
{
 struct regulation_constraints *regu_constraints = rdev->constraints;

 if (regu_constraints == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator constraints null pointer\n");
  return -EINVAL;
 }

 if (regu_constraints->min_uV && regu_constraints->max_uV) {
  if (regu_constraints->min_uV == regu_constraints->max_uV)
   return regu_constraints->min_uV;
 }
 return -EINVAL;
}
