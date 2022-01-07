
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_dev {int mrpc_mutex; int alive; } ;


 int EINTR ;
 int ENODEV ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lock_mutex_and_test_alive(struct switchtec_dev *stdev)
{
 if (mutex_lock_interruptible(&stdev->mrpc_mutex))
  return -EINTR;

 if (!stdev->alive) {
  mutex_unlock(&stdev->mrpc_mutex);
  return -ENODEV;
 }

 return 0;
}
