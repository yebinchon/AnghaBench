
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {int qp; int cm_id; } ;


 int ib_drain_qp (int ) ;
 int rdma_disconnect (int ) ;

__attribute__((used)) static void __nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
{
 rdma_disconnect(queue->cm_id);
 ib_drain_qp(queue->qp);
}
