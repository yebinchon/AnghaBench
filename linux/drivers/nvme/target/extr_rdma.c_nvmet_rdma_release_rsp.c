
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sg; int sg_cnt; } ;
struct nvmet_rdma_rsp {TYPE_3__ req; TYPE_2__* cmd; int rw; scalar_t__ n_rdma; struct nvmet_rdma_queue* queue; } ;
struct nvmet_rdma_queue {int rsp_wr_wait_list; TYPE_1__* cm_id; int sq_wr_avail; } ;
struct TYPE_6__ {scalar_t__ inline_sg; } ;
struct TYPE_5__ {int port_num; int qp; } ;


 int atomic_add (scalar_t__,int *) ;
 int list_empty_careful (int *) ;
 int nvmet_data_dir (TYPE_3__*) ;
 int nvmet_rdma_process_wr_wait_list (struct nvmet_rdma_queue*) ;
 int nvmet_rdma_put_rsp (struct nvmet_rdma_rsp*) ;
 int nvmet_req_free_sgl (TYPE_3__*) ;
 int rdma_rw_ctx_destroy (int *,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
{
 struct nvmet_rdma_queue *queue = rsp->queue;

 atomic_add(1 + rsp->n_rdma, &queue->sq_wr_avail);

 if (rsp->n_rdma) {
  rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
    queue->cm_id->port_num, rsp->req.sg,
    rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
 }

 if (rsp->req.sg != rsp->cmd->inline_sg)
  nvmet_req_free_sgl(&rsp->req);

 if (unlikely(!list_empty_careful(&queue->rsp_wr_wait_list)))
  nvmet_rdma_process_wr_wait_list(queue);

 nvmet_rdma_put_rsp(rsp);
}
