
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel {int vpm; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_4__ {int path_new_mask; } ;


 int CDEV_TODO_ENABLE_CMF ;
 int CDEV_TODO_REBIND ;
 int CIO_OPER ;
 scalar_t__ NOTIFY_OK ;
 scalar_t__ ccw_device_notify (struct ccw_device*,int ) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int ccw_device_set_notoper (struct ccw_device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_oper_notify(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 if (ccw_device_notify(cdev, CIO_OPER) == NOTIFY_OK) {

  ccw_device_sched_todo(cdev, CDEV_TODO_ENABLE_CMF);

  cdev->private->path_new_mask = sch->vpm;
  return;
 }

 ccw_device_set_notoper(cdev);
 ccw_device_sched_todo(cdev, CDEV_TODO_REBIND);
}
