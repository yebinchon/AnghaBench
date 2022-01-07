
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ host_scribble; } ;
struct qlogicpti {TYPE_1__* qhost; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int host_lock; } ;


 int IRQ_HANDLED ;
 struct scsi_cmnd* qlogicpti_intr_handler (struct qlogicpti*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static irqreturn_t qpti_intr(int irq, void *dev_id)
{
 struct qlogicpti *qpti = dev_id;
 unsigned long flags;
 struct scsi_cmnd *dq;

 spin_lock_irqsave(qpti->qhost->host_lock, flags);
 dq = qlogicpti_intr_handler(qpti);

 if (dq != ((void*)0)) {
  do {
   struct scsi_cmnd *next;

   next = (struct scsi_cmnd *) dq->host_scribble;
   dq->scsi_done(dq);
   dq = next;
  } while (dq != ((void*)0));
 }
 spin_unlock_irqrestore(qpti->qhost->host_lock, flags);

 return IRQ_HANDLED;
}
