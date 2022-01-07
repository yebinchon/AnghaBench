
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgt_queue {int qlock; } ;
struct nvmet_fc_target_port {int dummy; } ;
struct nvmet_fc_fcp_iod {int abort; int aborted; int flock; scalar_t__ active; struct nvmet_fc_tgt_queue* queue; struct nvmefc_tgt_fcp_req* fcpreq; } ;
struct nvmefc_tgt_fcp_req {struct nvmet_fc_fcp_iod* nvmet_fc_private; } ;


 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nvmet_fc_rcv_fcp_abort(struct nvmet_fc_target_port *target_port,
   struct nvmefc_tgt_fcp_req *fcpreq)
{
 struct nvmet_fc_fcp_iod *fod = fcpreq->nvmet_fc_private;
 struct nvmet_fc_tgt_queue *queue;
 unsigned long flags;

 if (!fod || fod->fcpreq != fcpreq)

  return;

 queue = fod->queue;

 spin_lock_irqsave(&queue->qlock, flags);
 if (fod->active) {





  spin_lock(&fod->flock);
  fod->abort = 1;
  fod->aborted = 1;
  spin_unlock(&fod->flock);
 }
 spin_unlock_irqrestore(&queue->qlock, flags);
}
