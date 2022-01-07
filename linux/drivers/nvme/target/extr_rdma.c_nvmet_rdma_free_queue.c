
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_rdma_queue {int idx; int host_qid; int recv_queue_size; int cmds; TYPE_1__* dev; int nvme_sq; } ;
struct TYPE_2__ {int srq; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct nvmet_rdma_queue*) ;
 int nvmet_rdma_destroy_queue_ib (struct nvmet_rdma_queue*) ;
 int nvmet_rdma_free_cmds (TYPE_1__*,int ,int ,int) ;
 int nvmet_rdma_free_rsps (struct nvmet_rdma_queue*) ;
 int nvmet_rdma_queue_ida ;
 int nvmet_sq_destroy (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nvmet_rdma_free_queue(struct nvmet_rdma_queue *queue)
{
 pr_debug("freeing queue %d\n", queue->idx);

 nvmet_sq_destroy(&queue->nvme_sq);

 nvmet_rdma_destroy_queue_ib(queue);
 if (!queue->dev->srq) {
  nvmet_rdma_free_cmds(queue->dev, queue->cmds,
    queue->recv_queue_size,
    !queue->host_qid);
 }
 nvmet_rdma_free_rsps(queue);
 ida_simple_remove(&nvmet_rdma_queue_ida, queue->idx);
 kfree(queue);
}
