
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct rdma_cm_id {int port_num; int qp; } ;
struct TYPE_5__ {scalar_t__ transfer_len; int sg_cnt; int sg; } ;
struct nvmet_rdma_rsp {int n_rdma; TYPE_2__ req; int flags; int invalidate_rkey; int rw; TYPE_1__* queue; } ;
struct nvme_keyed_sgl_desc {int length; int key; int addr; } ;
struct TYPE_4__ {struct rdma_cm_id* cm_id; } ;


 int NVMET_RDMA_REQ_INVALIDATE_RKEY ;
 int NVME_SC_INTERNAL ;
 scalar_t__ get_unaligned_le24 (int ) ;
 int get_unaligned_le32 (int ) ;
 int le64_to_cpu (int ) ;
 int nvmet_data_dir (TYPE_2__*) ;
 int nvmet_req_alloc_sgl (TYPE_2__*) ;
 int rdma_rw_ctx_init (int *,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
  struct nvme_keyed_sgl_desc *sgl, bool invalidate)
{
 struct rdma_cm_id *cm_id = rsp->queue->cm_id;
 u64 addr = le64_to_cpu(sgl->addr);
 u32 key = get_unaligned_le32(sgl->key);
 int ret;

 rsp->req.transfer_len = get_unaligned_le24(sgl->length);


 if (!rsp->req.transfer_len)
  return 0;

 ret = nvmet_req_alloc_sgl(&rsp->req);
 if (ret < 0)
  goto error_out;

 ret = rdma_rw_ctx_init(&rsp->rw, cm_id->qp, cm_id->port_num,
   rsp->req.sg, rsp->req.sg_cnt, 0, addr, key,
   nvmet_data_dir(&rsp->req));
 if (ret < 0)
  goto error_out;
 rsp->n_rdma += ret;

 if (invalidate) {
  rsp->invalidate_rkey = key;
  rsp->flags |= NVMET_RDMA_REQ_INVALIDATE_RKEY;
 }

 return 0;

error_out:
 rsp->req.transfer_len = 0;
 return NVME_SC_INTERNAL;
}
