
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct irb {int dummy; } ;
struct ccw_device {TYPE_3__* private; int (* handler ) (struct ccw_device*,int ,TYPE_4__*) ;} ;
struct TYPE_9__ {int scsw; } ;
struct TYPE_6__ {scalar_t__ fast; int repall; } ;
struct TYPE_8__ {TYPE_2__* dma_area; int intparm; TYPE_1__ options; } ;
struct TYPE_7__ {TYPE_4__ irb; } ;


 unsigned int SCSW_STCTL_ALERT_STATUS ;
 unsigned int SCSW_STCTL_INTER_STATUS ;
 unsigned int SCSW_STCTL_PRIM_STATUS ;
 unsigned int SCSW_STCTL_SEC_STATUS ;
 unsigned int SCSW_STCTL_STATUS_PEND ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 unsigned int scsw_stctl (int *) ;
 int stub1 (struct ccw_device*,int ,TYPE_4__*) ;

__attribute__((used)) static int ccw_device_call_handler(struct ccw_device *cdev)
{
 unsigned int stctl;
 int ending_status;
 stctl = scsw_stctl(&cdev->private->dma_area->irb.scsw);
 ending_status = (stctl & SCSW_STCTL_SEC_STATUS) ||
  (stctl == (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND)) ||
  (stctl == SCSW_STCTL_STATUS_PEND);
 if (!ending_status &&
     !cdev->private->options.repall &&
     !(stctl & SCSW_STCTL_INTER_STATUS) &&
     !(cdev->private->options.fast &&
       (stctl & SCSW_STCTL_PRIM_STATUS)))
  return 0;

 if (ending_status)
  ccw_device_set_timeout(cdev, 0);

 if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm,
         &cdev->private->dma_area->irb);

 memset(&cdev->private->dma_area->irb, 0, sizeof(struct irb));
 return 1;
}
