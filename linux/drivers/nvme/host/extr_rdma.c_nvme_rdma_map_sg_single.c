
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int sgl; } ;
struct nvme_rdma_request {TYPE_5__ sg_table; } ;
struct nvme_rdma_queue {TYPE_2__* device; } ;
struct nvme_keyed_sgl_desc {int type; int key; int length; int addr; } ;
struct TYPE_8__ {struct nvme_keyed_sgl_desc ksgl; } ;
struct TYPE_9__ {TYPE_3__ dptr; } ;
struct nvme_command {TYPE_4__ common; } ;
struct TYPE_7__ {TYPE_1__* pd; } ;
struct TYPE_6__ {int unsafe_global_rkey; } ;


 int NVME_KEY_SGL_FMT_DATA_DESC ;
 int cpu_to_le64 (int ) ;
 int put_unaligned_le24 (int ,int ) ;
 int put_unaligned_le32 (int ,int ) ;
 int sg_dma_address (int ) ;
 int sg_dma_len (int ) ;

__attribute__((used)) static int nvme_rdma_map_sg_single(struct nvme_rdma_queue *queue,
  struct nvme_rdma_request *req, struct nvme_command *c)
{
 struct nvme_keyed_sgl_desc *sg = &c->common.dptr.ksgl;

 sg->addr = cpu_to_le64(sg_dma_address(req->sg_table.sgl));
 put_unaligned_le24(sg_dma_len(req->sg_table.sgl), sg->length);
 put_unaligned_le32(queue->device->pd->unsafe_global_rkey, sg->key);
 sg->type = NVME_KEY_SGL_FMT_DATA_DESC << 4;
 return 0;
}
