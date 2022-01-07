
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int _regulator_get_mode_unlocked (struct regulator_dev*) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;

__attribute__((used)) static unsigned int _regulator_get_mode(struct regulator_dev *rdev)
{
 int ret;

 regulator_lock(rdev);
 ret = _regulator_get_mode_unlocked(rdev);
 regulator_unlock(rdev);

 return ret;
}
