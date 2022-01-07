
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int cons; } ;
struct TYPE_14__ {TYPE_1__ erw; } ;
struct TYPE_15__ {TYPE_2__ esw0; } ;
struct TYPE_19__ {int fctl; int actl; int stctl; int dstat; int cstat; int count; int cpa; int ssi; int alcc; int isic; int pfch; int fmt; int cc; int sctl; int key; } ;
struct TYPE_20__ {TYPE_7__ cmd; } ;
struct irb {TYPE_3__ esw; TYPE_8__ scsw; } ;
struct ccw_device {TYPE_6__* private; } ;
struct TYPE_16__ {int dosense; } ;
struct TYPE_18__ {TYPE_4__ flags; TYPE_5__* dma_area; } ;
struct TYPE_17__ {struct irb irb; } ;


 int DEV_STAT_BUSY ;
 int DEV_STAT_UNIT_CHECK ;
 int SCHN_STAT_INCORR_LEN ;
 int SCHN_STAT_PCI ;
 int SCSW_ACTL_DEVACT ;
 int SCSW_ACTL_SCHACT ;
 int SCSW_ACTL_SUSPENDED ;
 int SCSW_FCTL_CLEAR_FUNC ;
 int SCSW_FCTL_START_FUNC ;
 int SCSW_STCTL_ALERT_STATUS ;
 int SCSW_STCTL_INTER_STATUS ;
 int SCSW_STCTL_PRIM_STATUS ;
 int SCSW_STCTL_SEC_STATUS ;
 int SCSW_STCTL_STATUS_PEND ;
 int ccw_device_accumulate_ecw (struct ccw_device*,struct irb*) ;
 int ccw_device_accumulate_esw (struct ccw_device*,struct irb*) ;
 int ccw_device_msg_control_check (struct ccw_device*,struct irb*) ;
 int ccw_device_path_notoper (struct ccw_device*) ;
 int memcpy (struct irb*,struct irb*,int) ;
 int memset (struct irb*,int ,int) ;
 int scsw_is_solicited (TYPE_8__*) ;
 scalar_t__ scsw_is_tm (TYPE_8__*) ;
 scalar_t__ scsw_is_valid_pno (TYPE_8__*) ;
 scalar_t__ scsw_pno (TYPE_8__*) ;
 int scsw_stctl (TYPE_8__*) ;

void
ccw_device_accumulate_irb(struct ccw_device *cdev, struct irb *irb)
{
 struct irb *cdev_irb;






 if (!(scsw_stctl(&irb->scsw) & SCSW_STCTL_STATUS_PEND))
  return;


 ccw_device_msg_control_check(cdev, irb);


 if (scsw_is_valid_pno(&irb->scsw) && scsw_pno(&irb->scsw))
  ccw_device_path_notoper(cdev);

 if (scsw_is_tm(&irb->scsw)) {
  memcpy(&cdev->private->dma_area->irb, irb, sizeof(struct irb));
  return;
 }



 if (!scsw_is_solicited(&irb->scsw))
  return;

 cdev_irb = &cdev->private->dma_area->irb;






 if (irb->scsw.cmd.fctl & SCSW_FCTL_CLEAR_FUNC)
  memset(&cdev->private->dma_area->irb, 0, sizeof(struct irb));


 if (irb->scsw.cmd.fctl & SCSW_FCTL_START_FUNC) {

  cdev_irb->scsw.cmd.key = irb->scsw.cmd.key;

  cdev_irb->scsw.cmd.sctl = irb->scsw.cmd.sctl;

  cdev_irb->scsw.cmd.cc |= irb->scsw.cmd.cc;

  cdev_irb->scsw.cmd.fmt = irb->scsw.cmd.fmt;

  cdev_irb->scsw.cmd.pfch = irb->scsw.cmd.pfch;

  cdev_irb->scsw.cmd.isic = irb->scsw.cmd.isic;

  cdev_irb->scsw.cmd.alcc = irb->scsw.cmd.alcc;

  cdev_irb->scsw.cmd.ssi = irb->scsw.cmd.ssi;
 }


 ccw_device_accumulate_ecw(cdev, irb);


 cdev_irb->scsw.cmd.fctl |= irb->scsw.cmd.fctl;

 cdev_irb->scsw.cmd.actl = irb->scsw.cmd.actl;

 cdev_irb->scsw.cmd.stctl |= irb->scsw.cmd.stctl;




 if ((irb->scsw.cmd.stctl & SCSW_STCTL_PRIM_STATUS) ||
     ((irb->scsw.cmd.stctl ==
       (SCSW_STCTL_INTER_STATUS|SCSW_STCTL_STATUS_PEND)) &&
      (irb->scsw.cmd.actl & SCSW_ACTL_DEVACT) &&
      (irb->scsw.cmd.actl & SCSW_ACTL_SCHACT)) ||
     (irb->scsw.cmd.actl & SCSW_ACTL_SUSPENDED))
  cdev_irb->scsw.cmd.cpa = irb->scsw.cmd.cpa;

 cdev_irb->scsw.cmd.dstat &= ~DEV_STAT_BUSY;

 if (irb->scsw.cmd.stctl &
     (SCSW_STCTL_PRIM_STATUS | SCSW_STCTL_SEC_STATUS
      | SCSW_STCTL_INTER_STATUS | SCSW_STCTL_ALERT_STATUS))
  cdev_irb->scsw.cmd.dstat |= irb->scsw.cmd.dstat;

 cdev_irb->scsw.cmd.cstat |= irb->scsw.cmd.cstat;

 if ((irb->scsw.cmd.stctl & SCSW_STCTL_PRIM_STATUS) &&
     (irb->scsw.cmd.cstat & ~(SCHN_STAT_PCI | SCHN_STAT_INCORR_LEN))
      == 0)
  cdev_irb->scsw.cmd.count = irb->scsw.cmd.count;


 ccw_device_accumulate_esw(cdev, irb);
 if ((cdev_irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) &&
     !(cdev_irb->esw.esw0.erw.cons))
  cdev->private->flags.dosense = 1;
}
