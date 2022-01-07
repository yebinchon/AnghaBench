
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct regulator_dev {TYPE_1__ mutex; } ;


 int NOTIFY_DONE ;
 int _notifier_call_chain (struct regulator_dev*,unsigned long,void*) ;
 int lockdep_assert_held_once (int *) ;

int regulator_notifier_call_chain(struct regulator_dev *rdev,
      unsigned long event, void *data)
{
 lockdep_assert_held_once(&rdev->mutex.base);

 _notifier_call_chain(rdev, event, data);
 return NOTIFY_DONE;

}
