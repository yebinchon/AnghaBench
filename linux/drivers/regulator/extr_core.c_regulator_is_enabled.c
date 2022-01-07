
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int rdev; scalar_t__ always_on; } ;


 int _regulator_is_enabled (int ) ;
 int regulator_lock (int ) ;
 int regulator_unlock (int ) ;

int regulator_is_enabled(struct regulator *regulator)
{
 int ret;

 if (regulator->always_on)
  return 1;

 regulator_lock(regulator->rdev);
 ret = _regulator_is_enabled(regulator->rdev);
 regulator_unlock(regulator->rdev);

 return ret;
}
