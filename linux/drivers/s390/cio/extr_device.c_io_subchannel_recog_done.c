
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* private; } ;
struct TYPE_3__ {int recog_done; } ;
struct TYPE_4__ {int state; TYPE_1__ flags; } ;


 int CDEV_TODO_REGISTER ;
 int CDEV_TODO_UNREG ;



 int atomic_dec_and_test (int *) ;
 int ccw_device_init_count ;
 int ccw_device_init_wq ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 scalar_t__ css_init_done ;
 int wake_up (int *) ;

void
io_subchannel_recog_done(struct ccw_device *cdev)
{
 if (css_init_done == 0) {
  cdev->private->flags.recog_done = 1;
  return;
 }
 switch (cdev->private->state) {
 case 130:

 case 129:
  cdev->private->flags.recog_done = 1;

  ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  if (atomic_dec_and_test(&ccw_device_init_count))
   wake_up(&ccw_device_init_wq);
  break;
 case 128:




  ccw_device_sched_todo(cdev, CDEV_TODO_REGISTER);
  break;
 }
}
