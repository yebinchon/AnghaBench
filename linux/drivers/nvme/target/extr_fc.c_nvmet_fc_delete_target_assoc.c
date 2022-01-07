
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int lock; } ;
struct nvmet_fc_tgt_queue {int dummy; } ;
struct nvmet_fc_tgt_assoc {struct nvmet_fc_tgt_queue** queues; struct nvmet_fc_tgtport* tgtport; } ;


 int NVMET_NR_QUEUES ;
 int nvmet_fc_delete_target_queue (struct nvmet_fc_tgt_queue*) ;
 int nvmet_fc_tgt_a_put (struct nvmet_fc_tgt_assoc*) ;
 int nvmet_fc_tgt_q_get (struct nvmet_fc_tgt_queue*) ;
 int nvmet_fc_tgt_q_put (struct nvmet_fc_tgt_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvmet_fc_delete_target_assoc(struct nvmet_fc_tgt_assoc *assoc)
{
 struct nvmet_fc_tgtport *tgtport = assoc->tgtport;
 struct nvmet_fc_tgt_queue *queue;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&tgtport->lock, flags);
 for (i = NVMET_NR_QUEUES; i >= 0; i--) {
  queue = assoc->queues[i];
  if (queue) {
   if (!nvmet_fc_tgt_q_get(queue))
    continue;
   spin_unlock_irqrestore(&tgtport->lock, flags);
   nvmet_fc_delete_target_queue(queue);
   nvmet_fc_tgt_q_put(queue);
   spin_lock_irqsave(&tgtport->lock, flags);
  }
 }
 spin_unlock_irqrestore(&tgtport->lock, flags);

 nvmet_fc_tgt_a_put(assoc);
}
