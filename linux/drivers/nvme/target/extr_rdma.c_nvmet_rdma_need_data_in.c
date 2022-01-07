
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transfer_len; int cmd; } ;
struct nvmet_rdma_rsp {int flags; TYPE_1__ req; } ;


 int NVMET_RDMA_REQ_INLINE_DATA ;
 scalar_t__ nvme_is_write (int ) ;

__attribute__((used)) static inline bool nvmet_rdma_need_data_in(struct nvmet_rdma_rsp *rsp)
{
 return nvme_is_write(rsp->req.cmd) &&
  rsp->req.transfer_len &&
  !(rsp->flags & NVMET_RDMA_REQ_INLINE_DATA);
}
