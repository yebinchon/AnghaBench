
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; int (* handler ) (struct ccw_device*,int ,int ) ;} ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int async_kill_io_rc; int intparm; } ;


 int ERR_PTR (int ) ;
 int ccw_device_online_verify (struct ccw_device*,int ) ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int stub1 (struct ccw_device*,int ,int ) ;

__attribute__((used)) static void
ccw_device_killing_irq(struct ccw_device *cdev, enum dev_event dev_event)
{
 ccw_device_set_timeout(cdev, 0);

 ccw_device_online_verify(cdev, 0);

 if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm,
         ERR_PTR(cdev->private->async_kill_io_rc));
}
