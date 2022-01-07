
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_queue {int cq_poll_lock; } ;
struct blk_mq_hw_ctx {struct nvme_queue* driver_data; } ;


 int nvme_complete_cqes (struct nvme_queue*,int ,int ) ;
 int nvme_cqe_pending (struct nvme_queue*) ;
 int nvme_process_cq (struct nvme_queue*,int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvme_poll(struct blk_mq_hw_ctx *hctx)
{
 struct nvme_queue *nvmeq = hctx->driver_data;
 u16 start, end;
 bool found;

 if (!nvme_cqe_pending(nvmeq))
  return 0;

 spin_lock(&nvmeq->cq_poll_lock);
 found = nvme_process_cq(nvmeq, &start, &end, -1);
 spin_unlock(&nvmeq->cq_poll_lock);

 nvme_complete_cqes(nvmeq, start, end);
 return found;
}
