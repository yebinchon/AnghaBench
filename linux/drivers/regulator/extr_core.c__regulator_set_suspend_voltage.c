
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;
struct regulator_state {scalar_t__ min_uV; scalar_t__ max_uV; } ;
struct regulator_dev {int dummy; } ;
struct regulator {struct regulator_dev* rdev; } ;


 int EINVAL ;
 int EPERM ;
 int rdev_err (struct regulator_dev*,char*) ;
 struct regulator_state* regulator_get_suspend_state (struct regulator_dev*,int ) ;
 int regulator_set_voltage_unlocked (struct regulator*,int,int,int ) ;

__attribute__((used)) static int _regulator_set_suspend_voltage(struct regulator *regulator,
       int min_uV, int max_uV,
       suspend_state_t state)
{
 struct regulator_dev *rdev = regulator->rdev;
 struct regulator_state *rstate;

 rstate = regulator_get_suspend_state(rdev, state);
 if (rstate == ((void*)0))
  return -EINVAL;

 if (rstate->min_uV == rstate->max_uV) {
  rdev_err(rdev, "The suspend voltage can't be changed!\n");
  return -EPERM;
 }

 return regulator_set_voltage_unlocked(regulator, min_uV, max_uV, state);
}
