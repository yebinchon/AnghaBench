
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int done; } ;
struct nvme_rdma_request {TYPE_3__ reg_cqe; TYPE_1__* mr; } ;
struct nvme_rdma_queue {int qp; } ;
struct TYPE_5__ {int invalidate_rkey; } ;
struct ib_send_wr {TYPE_3__* wr_cqe; TYPE_2__ ex; int send_flags; int num_sge; int * next; int opcode; } ;
struct TYPE_4__ {int rkey; } ;


 int IB_SEND_SIGNALED ;
 int IB_WR_LOCAL_INV ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int nvme_rdma_inv_rkey_done ;

__attribute__((used)) static int nvme_rdma_inv_rkey(struct nvme_rdma_queue *queue,
  struct nvme_rdma_request *req)
{
 struct ib_send_wr wr = {
  .opcode = IB_WR_LOCAL_INV,
  .next = ((void*)0),
  .num_sge = 0,
  .send_flags = IB_SEND_SIGNALED,
  .ex.invalidate_rkey = req->mr->rkey,
 };

 req->reg_cqe.done = nvme_rdma_inv_rkey_done;
 wr.wr_cqe = &req->reg_cqe;

 return ib_post_send(queue->qp, &wr, ((void*)0));
}
