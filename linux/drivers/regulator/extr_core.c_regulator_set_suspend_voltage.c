
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;
struct ww_acquire_ctx {int dummy; } ;
struct regulator {int rdev; } ;


 int EINVAL ;
 scalar_t__ PM_SUSPEND_ON ;
 int _regulator_set_suspend_voltage (struct regulator*,int,int,scalar_t__) ;
 scalar_t__ regulator_check_states (scalar_t__) ;
 int regulator_lock_dependent (int ,struct ww_acquire_ctx*) ;
 int regulator_unlock_dependent (int ,struct ww_acquire_ctx*) ;

int regulator_set_suspend_voltage(struct regulator *regulator, int min_uV,
      int max_uV, suspend_state_t state)
{
 struct ww_acquire_ctx ww_ctx;
 int ret;


 if (regulator_check_states(state) || state == PM_SUSPEND_ON)
  return -EINVAL;

 regulator_lock_dependent(regulator->rdev, &ww_ctx);

 ret = _regulator_set_suspend_voltage(regulator, min_uV,
          max_uV, state);

 regulator_unlock_dependent(regulator->rdev, &ww_ctx);

 return ret;
}
