
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct regulator_dev {TYPE_1__ mutex; } ;
struct regulator {scalar_t__ enable_count; scalar_t__ uA_load; struct regulator_dev* rdev; } ;


 int EINVAL ;
 int drms_uA_update (struct regulator_dev*) ;
 int lockdep_assert_held_once (int *) ;
 int rdev_err (struct regulator_dev*,char*) ;

__attribute__((used)) static int _regulator_handle_consumer_disable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;

 lockdep_assert_held_once(&rdev->mutex.base);

 if (!regulator->enable_count) {
  rdev_err(rdev, "Underflow of regulator enable count\n");
  return -EINVAL;
 }

 regulator->enable_count--;
 if (regulator->uA_load && regulator->enable_count == 0)
  return drms_uA_update(rdev);

 return 0;
}
