
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int state; } ;


 int DEV_STATE_ONLINE ;
 int dev_fsm_event (struct ccw_device*,int) ;
 int retry_set_schib (struct ccw_device*) ;

__attribute__((used)) static void
ccw_device_change_cmfstate(struct ccw_device *cdev, enum dev_event dev_event)
{
 retry_set_schib(cdev);
 cdev->private->state = DEV_STATE_ONLINE;
 dev_fsm_event(cdev, dev_event);
}
