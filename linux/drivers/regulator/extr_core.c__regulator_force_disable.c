
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct regulator_dev {TYPE_1__ mutex; } ;


 int EINVAL ;
 int NOTIFY_STOP_MASK ;
 int REGULATOR_EVENT_ABORT_DISABLE ;
 int REGULATOR_EVENT_DISABLE ;
 int REGULATOR_EVENT_FORCE_DISABLE ;
 int REGULATOR_EVENT_PRE_DISABLE ;
 int _notifier_call_chain (struct regulator_dev*,int,int *) ;
 int _regulator_do_disable (struct regulator_dev*) ;
 int lockdep_assert_held_once (int *) ;
 int rdev_err (struct regulator_dev*,char*) ;

__attribute__((used)) static int _regulator_force_disable(struct regulator_dev *rdev)
{
 int ret = 0;

 lockdep_assert_held_once(&rdev->mutex.base);

 ret = _notifier_call_chain(rdev, REGULATOR_EVENT_FORCE_DISABLE |
   REGULATOR_EVENT_PRE_DISABLE, ((void*)0));
 if (ret & NOTIFY_STOP_MASK)
  return -EINVAL;

 ret = _regulator_do_disable(rdev);
 if (ret < 0) {
  rdev_err(rdev, "failed to force disable\n");
  _notifier_call_chain(rdev, REGULATOR_EVENT_FORCE_DISABLE |
    REGULATOR_EVENT_ABORT_DISABLE, ((void*)0));
  return ret;
 }

 _notifier_call_chain(rdev, REGULATOR_EVENT_FORCE_DISABLE |
   REGULATOR_EVENT_DISABLE, ((void*)0));

 return 0;
}
