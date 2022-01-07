
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_2__ {int n_coupled; } ;
struct regulator_dev {scalar_t__ use_count; scalar_t__ supply; TYPE_1__ coupling_desc; } ;
struct regulator {scalar_t__ uA_load; struct regulator_dev* rdev; } ;


 int PM_SUSPEND_ON ;
 int _regulator_disable (scalar_t__) ;
 int _regulator_force_disable (struct regulator_dev*) ;
 int drms_uA_update (struct regulator_dev*) ;
 int regulator_balance_voltage (struct regulator_dev*,int ) ;
 int regulator_lock_dependent (struct regulator_dev*,struct ww_acquire_ctx*) ;
 int regulator_unlock_dependent (struct regulator_dev*,struct ww_acquire_ctx*) ;

int regulator_force_disable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;
 struct ww_acquire_ctx ww_ctx;
 int ret;

 regulator_lock_dependent(rdev, &ww_ctx);

 ret = _regulator_force_disable(regulator->rdev);

 if (rdev->coupling_desc.n_coupled > 1)
  regulator_balance_voltage(rdev, PM_SUSPEND_ON);

 if (regulator->uA_load) {
  regulator->uA_load = 0;
  ret = drms_uA_update(rdev);
 }

 if (rdev->use_count != 0 && rdev->supply)
  _regulator_disable(rdev->supply);

 regulator_unlock_dependent(rdev, &ww_ctx);

 return ret;
}
