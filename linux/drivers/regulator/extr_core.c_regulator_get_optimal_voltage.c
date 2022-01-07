
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int base; } ;
struct coupling_desc {struct regulator_dev** coupled_rdevs; } ;
struct regulator_dev {TYPE_1__ mutex; struct regulation_constraints* constraints; struct coupling_desc coupling_desc; } ;
struct regulation_constraints {int min_uV; int max_uV; int* max_spread; } ;


 int EINVAL ;
 int INT_MAX ;
 int PM_SUSPEND_ON ;
 scalar_t__ _regulator_is_enabled (struct regulator_dev*) ;
 int lockdep_assert_held_once (int *) ;
 int max (int,int) ;
 int min (int,int) ;
 int regulator_check_consumers (struct regulator_dev*,int*,int*,int ) ;
 int regulator_check_voltage (struct regulator_dev*,int*,int*) ;
 int regulator_get_voltage_rdev (struct regulator_dev*) ;
 int regulator_limit_voltage_step (struct regulator_dev*,int*,int*) ;

__attribute__((used)) static int regulator_get_optimal_voltage(struct regulator_dev *rdev,
      int *current_uV,
      int *min_uV, int *max_uV,
      suspend_state_t state,
      int n_coupled)
{
 struct coupling_desc *c_desc = &rdev->coupling_desc;
 struct regulator_dev **c_rdevs = c_desc->coupled_rdevs;
 struct regulation_constraints *constraints = rdev->constraints;
 int desired_min_uV = 0, desired_max_uV = INT_MAX;
 int max_current_uV = 0, min_current_uV = INT_MAX;
 int highest_min_uV = 0, target_uV, possible_uV;
 int i, ret, max_spread;
 bool done;

 *current_uV = -1;





 if (n_coupled == 1) {




  desired_min_uV = constraints->min_uV;
  desired_max_uV = constraints->max_uV;

  ret = regulator_check_consumers(rdev,
      &desired_min_uV,
      &desired_max_uV, state);
  if (ret < 0)
   return ret;

  possible_uV = desired_min_uV;
  done = 1;

  goto finish;
 }


 for (i = 0; i < n_coupled; i++) {
  int tmp_min = 0;
  int tmp_max = INT_MAX;

  lockdep_assert_held_once(&c_rdevs[i]->mutex.base);

  ret = regulator_check_consumers(c_rdevs[i],
      &tmp_min,
      &tmp_max, state);
  if (ret < 0)
   return ret;

  ret = regulator_check_voltage(c_rdevs[i], &tmp_min, &tmp_max);
  if (ret < 0)
   return ret;

  highest_min_uV = max(highest_min_uV, tmp_min);

  if (i == 0) {
   desired_min_uV = tmp_min;
   desired_max_uV = tmp_max;
  }
 }

 max_spread = constraints->max_spread[0];






 target_uV = max(desired_min_uV, highest_min_uV - max_spread);





 for (i = 1; i < n_coupled; i++) {
  int tmp_act;

  if (!_regulator_is_enabled(c_rdevs[i]))
   continue;

  tmp_act = regulator_get_voltage_rdev(c_rdevs[i]);
  if (tmp_act < 0)
   return tmp_act;

  min_current_uV = min(tmp_act, min_current_uV);
  max_current_uV = max(tmp_act, max_current_uV);
 }


 if (max_current_uV == 0) {
  possible_uV = target_uV;
 } else {




  possible_uV = max(target_uV, max_current_uV - max_spread);
  possible_uV = min(possible_uV, min_current_uV + max_spread);
 }

 if (possible_uV > desired_max_uV)
  return -EINVAL;

 done = (possible_uV == target_uV);
 desired_min_uV = possible_uV;

finish:

 if (state == PM_SUSPEND_ON) {
  ret = regulator_limit_voltage_step(rdev, current_uV,
         &desired_min_uV);
  if (ret < 0)
   return ret;

  if (ret == 0)
   done = 0;
 }


 if (n_coupled > 1 && *current_uV == -1) {

  if (_regulator_is_enabled(rdev)) {
   ret = regulator_get_voltage_rdev(rdev);
   if (ret < 0)
    return ret;

   *current_uV = ret;
  } else {
   *current_uV = desired_min_uV;
  }
 }

 *min_uV = desired_min_uV;
 *max_uV = desired_max_uV;

 return done;
}
