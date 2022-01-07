
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel {int dev; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_4__ {int state; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int DEV_STATE_NOT_OPER ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int cio_disable_subchannel (struct subchannel*) ;
 char* dev_name (int *) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_device_set_notoper(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);

 CIO_TRACE_EVENT(2, "notoper");
 CIO_TRACE_EVENT(2, dev_name(&sch->dev));
 ccw_device_set_timeout(cdev, 0);
 cio_disable_subchannel(sch);
 cdev->private->state = DEV_STATE_NOT_OPER;
}
