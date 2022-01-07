
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct ccw_device {int dummy; } ;


 int DEV_EVENT_VERIFY ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;

__attribute__((used)) static void io_subchannel_verify(struct subchannel *sch)
{
 struct ccw_device *cdev;

 cdev = sch_get_cdev(sch);
 if (cdev)
  dev_fsm_event(cdev, DEV_EVENT_VERIFY);
}
