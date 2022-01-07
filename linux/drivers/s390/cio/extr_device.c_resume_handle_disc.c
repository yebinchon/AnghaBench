
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int state; } ;


 int CDEV_TODO_UNREG ;
 int CIO_GONE ;
 int DEV_STATE_DISCONNECTED ;
 int ENODEV ;
 scalar_t__ NOTIFY_OK ;
 scalar_t__ ccw_device_notify (struct ccw_device*,int ) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;

__attribute__((used)) static int resume_handle_disc(struct ccw_device *cdev)
{
 cdev->private->state = DEV_STATE_DISCONNECTED;
 if (ccw_device_notify(cdev, CIO_GONE) == NOTIFY_OK)
  return 0;
 ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
 return -ENODEV;
}
