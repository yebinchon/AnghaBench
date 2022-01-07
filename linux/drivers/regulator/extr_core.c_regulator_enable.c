
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator {struct regulator_dev* rdev; } ;


 int _regulator_enable (struct regulator*) ;
 int regulator_lock_dependent (struct regulator_dev*,struct ww_acquire_ctx*) ;
 int regulator_unlock_dependent (struct regulator_dev*,struct ww_acquire_ctx*) ;

int regulator_enable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;
 struct ww_acquire_ctx ww_ctx;
 int ret;

 regulator_lock_dependent(rdev, &ww_ctx);
 ret = _regulator_enable(regulator);
 regulator_unlock_dependent(rdev, &ww_ctx);

 return ret;
}
