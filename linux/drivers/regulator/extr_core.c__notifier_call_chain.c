
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int notifier; } ;


 int blocking_notifier_call_chain (int *,unsigned long,void*) ;

__attribute__((used)) static int _notifier_call_chain(struct regulator_dev *rdev,
      unsigned long event, void *data)
{

 return blocking_notifier_call_chain(&rdev->notifier, event, data);
}
