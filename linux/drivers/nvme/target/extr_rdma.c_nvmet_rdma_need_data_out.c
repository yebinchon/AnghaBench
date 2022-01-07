
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cqe; scalar_t__ transfer_len; int cmd; } ;
struct nvmet_rdma_rsp {int flags; TYPE_2__ req; } ;
struct TYPE_3__ {int status; } ;


 int NVMET_RDMA_REQ_INLINE_DATA ;
 int nvme_is_write (int ) ;

__attribute__((used)) static inline bool nvmet_rdma_need_data_out(struct nvmet_rdma_rsp *rsp)
{
 return !nvme_is_write(rsp->req.cmd) &&
  rsp->req.transfer_len &&
  !rsp->req.cqe->status &&
  !(rsp->flags & NVMET_RDMA_REQ_INLINE_DATA);
}
