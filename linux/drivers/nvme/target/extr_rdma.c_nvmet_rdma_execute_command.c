
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvmet_rdma_rsp {int req; int read_cqe; int rw; scalar_t__ n_rdma; struct nvmet_rdma_queue* queue; } ;
struct TYPE_5__ {TYPE_1__* ctrl; } ;
struct nvmet_rdma_queue {TYPE_3__* cm_id; int sq_wr_avail; TYPE_2__ nvme_sq; int idx; } ;
struct TYPE_6__ {int port_num; int qp; } ;
struct TYPE_4__ {int cntlid; } ;


 int NVME_SC_DATA_XFER_ERROR ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_sub_return (scalar_t__,int *) ;
 scalar_t__ nvmet_rdma_need_data_in (struct nvmet_rdma_rsp*) ;
 int nvmet_req_complete (int *,int ) ;
 int nvmet_req_execute (int *) ;
 int pr_debug (char*,scalar_t__,int ,int ) ;
 scalar_t__ rdma_rw_ctx_post (int *,int ,int ,int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool nvmet_rdma_execute_command(struct nvmet_rdma_rsp *rsp)
{
 struct nvmet_rdma_queue *queue = rsp->queue;

 if (unlikely(atomic_sub_return(1 + rsp->n_rdma,
   &queue->sq_wr_avail) < 0)) {
  pr_debug("IB send queue full (needed %d): queue %u cntlid %u\n",
    1 + rsp->n_rdma, queue->idx,
    queue->nvme_sq.ctrl->cntlid);
  atomic_add(1 + rsp->n_rdma, &queue->sq_wr_avail);
  return 0;
 }

 if (nvmet_rdma_need_data_in(rsp)) {
  if (rdma_rw_ctx_post(&rsp->rw, queue->cm_id->qp,
    queue->cm_id->port_num, &rsp->read_cqe, ((void*)0)))
   nvmet_req_complete(&rsp->req, NVME_SC_DATA_XFER_ERROR);
 } else {
  nvmet_req_execute(&rsp->req);
 }

 return 1;
}
