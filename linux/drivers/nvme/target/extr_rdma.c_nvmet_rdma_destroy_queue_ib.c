
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_rdma_queue {int cq; TYPE_1__* cm_id; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {struct ib_qp* qp; } ;


 int ib_destroy_qp (struct ib_qp*) ;
 int ib_drain_qp (struct ib_qp*) ;
 int ib_free_cq (int ) ;
 int rdma_destroy_id (TYPE_1__*) ;

__attribute__((used)) static void nvmet_rdma_destroy_queue_ib(struct nvmet_rdma_queue *queue)
{
 struct ib_qp *qp = queue->cm_id->qp;

 ib_drain_qp(qp);
 rdma_destroy_id(queue->cm_id);
 ib_destroy_qp(qp);
 ib_free_cq(queue->cq);
}
