
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int cmdr_lock; int flags; } ;


 int TCMU_DEV_BIT_BLOCKED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int run_qfull_queue (struct tcmu_dev*,int) ;
 int tcmu_handle_completions (struct tcmu_dev*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void tcmu_block_dev(struct tcmu_dev *udev)
{
 mutex_lock(&udev->cmdr_lock);

 if (test_and_set_bit(TCMU_DEV_BIT_BLOCKED, &udev->flags))
  goto unlock;


 tcmu_handle_completions(udev);

 run_qfull_queue(udev, 1);

unlock:
 mutex_unlock(&udev->cmdr_lock);
}
