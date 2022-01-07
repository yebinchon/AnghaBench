
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct nvmet_fc_tgt_queue {size_t qid; size_t sqsize; int work_q; int nvme_sq; int ref; int qlock; int zrspcnt; int rsn; int sqtail; int connected; int pending_cmd_list; int avail_defer_list; int fod_list; struct nvmet_fc_tgt_assoc* assoc; } ;
struct nvmet_fc_tgt_assoc {TYPE_2__* tgtport; struct nvmet_fc_tgt_queue** queues; int a_id; } ;
struct TYPE_4__ {int port_num; } ;
struct TYPE_5__ {int lock; TYPE_1__ fc_target_port; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 size_t NVMET_NR_QUEUES ;
 int WARN_ON (struct nvmet_fc_tgt_queue*) ;
 int alloc_workqueue (char*,int ,int ,int ,int ,size_t) ;
 int atomic_set (int *,int) ;
 int destroy_workqueue (int ) ;
 int fod ;
 int kfree (struct nvmet_fc_tgt_queue*) ;
 int kref_init (int *) ;
 struct nvmet_fc_tgt_queue* kzalloc (int ,int ) ;
 int nvmet_fc_destroy_fcp_iodlist (TYPE_2__*,struct nvmet_fc_tgt_queue*) ;
 int nvmet_fc_prep_fcp_iodlist (TYPE_2__*,struct nvmet_fc_tgt_queue*) ;
 int nvmet_fc_tgt_a_get (struct nvmet_fc_tgt_assoc*) ;
 int nvmet_fc_tgt_a_put (struct nvmet_fc_tgt_assoc*) ;
 int nvmet_sq_init (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int struct_size (struct nvmet_fc_tgt_queue*,int ,size_t) ;

__attribute__((used)) static struct nvmet_fc_tgt_queue *
nvmet_fc_alloc_target_queue(struct nvmet_fc_tgt_assoc *assoc,
   u16 qid, u16 sqsize)
{
 struct nvmet_fc_tgt_queue *queue;
 unsigned long flags;
 int ret;

 if (qid > NVMET_NR_QUEUES)
  return ((void*)0);

 queue = kzalloc(struct_size(queue, fod, sqsize), GFP_KERNEL);
 if (!queue)
  return ((void*)0);

 if (!nvmet_fc_tgt_a_get(assoc))
  goto out_free_queue;

 queue->work_q = alloc_workqueue("ntfc%d.%d.%d", 0, 0,
    assoc->tgtport->fc_target_port.port_num,
    assoc->a_id, qid);
 if (!queue->work_q)
  goto out_a_put;

 queue->qid = qid;
 queue->sqsize = sqsize;
 queue->assoc = assoc;
 INIT_LIST_HEAD(&queue->fod_list);
 INIT_LIST_HEAD(&queue->avail_defer_list);
 INIT_LIST_HEAD(&queue->pending_cmd_list);
 atomic_set(&queue->connected, 0);
 atomic_set(&queue->sqtail, 0);
 atomic_set(&queue->rsn, 1);
 atomic_set(&queue->zrspcnt, 0);
 spin_lock_init(&queue->qlock);
 kref_init(&queue->ref);

 nvmet_fc_prep_fcp_iodlist(assoc->tgtport, queue);

 ret = nvmet_sq_init(&queue->nvme_sq);
 if (ret)
  goto out_fail_iodlist;

 WARN_ON(assoc->queues[qid]);
 spin_lock_irqsave(&assoc->tgtport->lock, flags);
 assoc->queues[qid] = queue;
 spin_unlock_irqrestore(&assoc->tgtport->lock, flags);

 return queue;

out_fail_iodlist:
 nvmet_fc_destroy_fcp_iodlist(assoc->tgtport, queue);
 destroy_workqueue(queue->work_q);
out_a_put:
 nvmet_fc_tgt_a_put(assoc);
out_free_queue:
 kfree(queue);
 return ((void*)0);
}
