
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct irb {int scsw; } ;
struct TYPE_7__ {int parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct ccw1 {int flags; int count; scalar_t__ cda; int cmd_code; } ;
typedef scalar_t__ __u32 ;
struct TYPE_12__ {TYPE_2__* dma_area; } ;
struct TYPE_11__ {TYPE_4__* dma_area; } ;
struct TYPE_9__ {int ecw; } ;
struct TYPE_10__ {TYPE_3__ irb; } ;
struct TYPE_8__ {struct ccw1 sense_ccw; } ;


 int CCW_CMD_BASIC_SENSE ;
 int CCW_FLAG_SLI ;
 int DEV_EVENT_VERIFY ;
 int EACCES ;
 int EBUSY ;
 int ENODEV ;
 int SCSW_ACTL_DEVACT ;
 int SCSW_ACTL_SCHACT ;
 int SENSE_MAX_COUNT ;
 scalar_t__ __pa (int ) ;
 int cio_start (struct subchannel*,struct ccw1*,int) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 int scsw_actl (int *) ;
 TYPE_6__* to_io_private (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

int
ccw_device_do_sense(struct ccw_device *cdev, struct irb *irb)
{
 struct subchannel *sch;
 struct ccw1 *sense_ccw;
 int rc;

 sch = to_subchannel(cdev->dev.parent);


 if (scsw_actl(&irb->scsw) & (SCSW_ACTL_DEVACT | SCSW_ACTL_SCHACT))






  return -EBUSY;




 sense_ccw = &to_io_private(sch)->dma_area->sense_ccw;
 sense_ccw->cmd_code = CCW_CMD_BASIC_SENSE;
 sense_ccw->cda = (__u32) __pa(cdev->private->dma_area->irb.ecw);
 sense_ccw->count = SENSE_MAX_COUNT;
 sense_ccw->flags = CCW_FLAG_SLI;

 rc = cio_start(sch, sense_ccw, 0xff);
 if (rc == -ENODEV || rc == -EACCES)
  dev_fsm_event(cdev, DEV_EVENT_VERIFY);
 return rc;
}
