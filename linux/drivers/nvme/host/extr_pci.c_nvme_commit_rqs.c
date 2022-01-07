
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {scalar_t__ sq_tail; scalar_t__ last_sq_tail; int sq_lock; } ;
struct blk_mq_hw_ctx {struct nvme_queue* driver_data; } ;


 int nvme_write_sq_db (struct nvme_queue*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nvme_commit_rqs(struct blk_mq_hw_ctx *hctx)
{
 struct nvme_queue *nvmeq = hctx->driver_data;

 spin_lock(&nvmeq->sq_lock);
 if (nvmeq->sq_tail != nvmeq->last_sq_tail)
  nvme_write_sq_db(nvmeq, 1);
 spin_unlock(&nvmeq->sq_lock);
}
