
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int n_coupled; } ;
struct TYPE_3__ {int base; } ;
struct regulator_dev {scalar_t__ use_count; struct regulator* supply; TYPE_2__ coupling_desc; TYPE_1__ mutex; } ;
struct regulator {struct regulator_dev* rdev; } ;


 int EINVAL ;
 int EPERM ;
 int PM_SUSPEND_ON ;
 int REGULATOR_CHANGE_STATUS ;
 int REGULATOR_EVENT_ENABLE ;
 int _notifier_call_chain (struct regulator_dev*,int ,int *) ;
 int _regulator_disable (struct regulator*) ;
 int _regulator_do_enable (struct regulator_dev*) ;
 int _regulator_handle_consumer_disable (struct regulator*) ;
 int _regulator_handle_consumer_enable (struct regulator*) ;
 int _regulator_is_enabled (struct regulator_dev*) ;
 int lockdep_assert_held_once (int *) ;
 int rdev_err (struct regulator_dev*,char*,int) ;
 int regulator_balance_voltage (struct regulator_dev*,int ) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

__attribute__((used)) static int _regulator_enable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret;

 lockdep_assert_held_once(&rdev->mutex.base);

 if (rdev->use_count == 0 && rdev->supply) {
  ret = _regulator_enable(rdev->supply);
  if (ret < 0)
   return ret;
 }


 if (rdev->coupling_desc.n_coupled > 1) {
  ret = regulator_balance_voltage(rdev, PM_SUSPEND_ON);
  if (ret < 0)
   goto err_disable_supply;
 }

 ret = _regulator_handle_consumer_enable(regulator);
 if (ret < 0)
  goto err_disable_supply;

 if (rdev->use_count == 0) {

  ret = _regulator_is_enabled(rdev);
  if (ret == -EINVAL || ret == 0) {
   if (!regulator_ops_is_valid(rdev,
     REGULATOR_CHANGE_STATUS)) {
    ret = -EPERM;
    goto err_consumer_disable;
   }

   ret = _regulator_do_enable(rdev);
   if (ret < 0)
    goto err_consumer_disable;

   _notifier_call_chain(rdev, REGULATOR_EVENT_ENABLE,
          ((void*)0));
  } else if (ret < 0) {
   rdev_err(rdev, "is_enabled() failed: %d\n", ret);
   goto err_consumer_disable;
  }

 }

 rdev->use_count++;

 return 0;

err_consumer_disable:
 _regulator_handle_consumer_disable(regulator);

err_disable_supply:
 if (rdev->use_count == 0 && rdev->supply)
  _regulator_disable(rdev->supply);

 return ret;
}
