
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct regulator {int rdev; } ;


 int regulator_get_voltage_rdev (int ) ;
 int regulator_lock_dependent (int ,struct ww_acquire_ctx*) ;
 int regulator_unlock_dependent (int ,struct ww_acquire_ctx*) ;

int regulator_get_voltage(struct regulator *regulator)
{
 struct ww_acquire_ctx ww_ctx;
 int ret;

 regulator_lock_dependent(regulator->rdev, &ww_ctx);
 ret = regulator_get_voltage_rdev(regulator->rdev);
 regulator_unlock_dependent(regulator->rdev, &ww_ctx);

 return ret;
}
