
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int n_coupled; } ;
struct TYPE_4__ {int base; } ;
struct regulator_dev {int use_count; struct regulator* supply; TYPE_3__ coupling_desc; TYPE_2__* constraints; TYPE_1__ mutex; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_5__ {int always_on; } ;


 int EINVAL ;
 int EIO ;
 int NOTIFY_STOP_MASK ;
 int PM_SUSPEND_ON ;
 int REGULATOR_CHANGE_STATUS ;
 int REGULATOR_EVENT_ABORT_DISABLE ;
 int REGULATOR_EVENT_DISABLE ;
 int REGULATOR_EVENT_PRE_DISABLE ;
 scalar_t__ WARN (int,char*,int ) ;
 int _notifier_call_chain (struct regulator_dev*,int ,int *) ;
 int _regulator_do_disable (struct regulator_dev*) ;
 int _regulator_handle_consumer_disable (struct regulator*) ;
 int lockdep_assert_held_once (int *) ;
 int rdev_err (struct regulator_dev*,char*) ;
 int rdev_get_name (struct regulator_dev*) ;
 int regulator_balance_voltage (struct regulator_dev*,int ) ;
 scalar_t__ regulator_ops_is_valid (struct regulator_dev*,int ) ;

__attribute__((used)) static int _regulator_disable(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;
 int ret = 0;

 lockdep_assert_held_once(&rdev->mutex.base);

 if (WARN(rdev->use_count <= 0,
   "unbalanced disables for %s\n", rdev_get_name(rdev)))
  return -EIO;


 if (rdev->use_count == 1 &&
     (rdev->constraints && !rdev->constraints->always_on)) {


  if (regulator_ops_is_valid(rdev, REGULATOR_CHANGE_STATUS)) {
   ret = _notifier_call_chain(rdev,
         REGULATOR_EVENT_PRE_DISABLE,
         ((void*)0));
   if (ret & NOTIFY_STOP_MASK)
    return -EINVAL;

   ret = _regulator_do_disable(rdev);
   if (ret < 0) {
    rdev_err(rdev, "failed to disable\n");
    _notifier_call_chain(rdev,
      REGULATOR_EVENT_ABORT_DISABLE,
      ((void*)0));
    return ret;
   }
   _notifier_call_chain(rdev, REGULATOR_EVENT_DISABLE,
     ((void*)0));
  }

  rdev->use_count = 0;
 } else if (rdev->use_count > 1) {
  rdev->use_count--;
 }

 if (ret == 0)
  ret = _regulator_handle_consumer_disable(regulator);

 if (ret == 0 && rdev->coupling_desc.n_coupled > 1)
  ret = regulator_balance_voltage(rdev, PM_SUSPEND_ON);

 if (ret == 0 && rdev->use_count == 0 && rdev->supply)
  ret = _regulator_disable(rdev->supply);

 return ret;
}
