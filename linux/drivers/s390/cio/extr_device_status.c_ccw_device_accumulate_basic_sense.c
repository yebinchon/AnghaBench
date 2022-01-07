
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_24__ {scalar_t__ pvrf; } ;
struct TYPE_25__ {TYPE_7__ erw; } ;
struct TYPE_26__ {TYPE_8__ esw0; } ;
struct TYPE_18__ {int dstat; } ;
struct TYPE_17__ {TYPE_1__ cmd; } ;
struct irb {TYPE_9__ esw; TYPE_12__ scsw; } ;
struct ccw_device {TYPE_11__* private; } ;
struct TYPE_19__ {int cons; } ;
struct TYPE_20__ {TYPE_2__ erw; } ;
struct TYPE_21__ {TYPE_3__ esw0; } ;
struct TYPE_22__ {TYPE_4__ esw; } ;
struct TYPE_23__ {TYPE_5__ irb; } ;
struct TYPE_15__ {int doverify; scalar_t__ dosense; } ;
struct TYPE_16__ {TYPE_10__ flags; TYPE_6__* dma_area; } ;


 int DEV_STAT_CHN_END ;
 int DEV_STAT_UNIT_CHECK ;
 int SCSW_STCTL_STATUS_PEND ;
 scalar_t__ ccw_device_accumulate_esw_valid (struct irb*) ;
 int ccw_device_msg_control_check (struct ccw_device*,struct irb*) ;
 int ccw_device_path_notoper (struct ccw_device*) ;
 scalar_t__ scsw_is_valid_pno (TYPE_12__*) ;
 scalar_t__ scsw_pno (TYPE_12__*) ;
 int scsw_stctl (TYPE_12__*) ;

void
ccw_device_accumulate_basic_sense(struct ccw_device *cdev, struct irb *irb)
{





 if (!(scsw_stctl(&irb->scsw) & SCSW_STCTL_STATUS_PEND))
  return;


 ccw_device_msg_control_check(cdev, irb);


 if (scsw_is_valid_pno(&irb->scsw) && scsw_pno(&irb->scsw))
  ccw_device_path_notoper(cdev);

 if (!(irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) &&
     (irb->scsw.cmd.dstat & DEV_STAT_CHN_END)) {
  cdev->private->dma_area->irb.esw.esw0.erw.cons = 1;
  cdev->private->flags.dosense = 0;
 }

 if (ccw_device_accumulate_esw_valid(irb) &&
     irb->esw.esw0.erw.pvrf)
  cdev->private->flags.doverify = 1;
}
