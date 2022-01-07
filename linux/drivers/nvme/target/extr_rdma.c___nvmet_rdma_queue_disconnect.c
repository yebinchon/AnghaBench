
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_queue {int state; int release_work; int cm_id; int state_lock; } ;





 int pr_debug (char*,int ,int) ;
 int rdma_disconnect (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __nvmet_rdma_queue_disconnect(struct nvmet_rdma_queue *queue)
{
 bool disconnect = 0;
 unsigned long flags;

 pr_debug("cm_id= %p queue->state= %d\n", queue->cm_id, queue->state);

 spin_lock_irqsave(&queue->state_lock, flags);
 switch (queue->state) {
 case 130:
 case 128:
  queue->state = 129;
  disconnect = 1;
  break;
 case 129:
  break;
 }
 spin_unlock_irqrestore(&queue->state_lock, flags);

 if (disconnect) {
  rdma_disconnect(queue->cm_id);
  schedule_work(&queue->release_work);
 }
}
