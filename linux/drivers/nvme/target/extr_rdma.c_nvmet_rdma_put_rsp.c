
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_rdma_rsp {TYPE_1__* queue; int free_list; int allocated; } ;
struct TYPE_2__ {int rsps_lock; int free_rsps; int dev; } ;


 int kfree (struct nvmet_rdma_rsp*) ;
 int list_add_tail (int *,int *) ;
 int nvmet_rdma_free_rsp (int ,struct nvmet_rdma_rsp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void
nvmet_rdma_put_rsp(struct nvmet_rdma_rsp *rsp)
{
 unsigned long flags;

 if (unlikely(rsp->allocated)) {
  nvmet_rdma_free_rsp(rsp->queue->dev, rsp);
  kfree(rsp);
  return;
 }

 spin_lock_irqsave(&rsp->queue->rsps_lock, flags);
 list_add_tail(&rsp->free_list, &rsp->queue->free_rsps);
 spin_unlock_irqrestore(&rsp->queue->rsps_lock, flags);
}
