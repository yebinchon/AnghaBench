
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct regulator {int rdev; } ;


 int PM_SUSPEND_ON ;
 int regulator_lock_dependent (int ,struct ww_acquire_ctx*) ;
 int regulator_set_voltage_unlocked (struct regulator*,int,int,int ) ;
 int regulator_unlock_dependent (int ,struct ww_acquire_ctx*) ;

int regulator_set_voltage(struct regulator *regulator, int min_uV, int max_uV)
{
 struct ww_acquire_ctx ww_ctx;
 int ret;

 regulator_lock_dependent(regulator->rdev, &ww_ctx);

 ret = regulator_set_voltage_unlocked(regulator, min_uV, max_uV,
          PM_SUSPEND_ON);

 regulator_unlock_dependent(regulator->rdev, &ww_ctx);

 return ret;
}
