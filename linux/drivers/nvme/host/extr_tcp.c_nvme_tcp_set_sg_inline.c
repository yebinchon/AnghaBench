
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvme_tcp_queue {TYPE_4__* ctrl; } ;
struct nvme_sgl_desc {int type; int length; int addr; } ;
struct TYPE_5__ {struct nvme_sgl_desc sgl; } ;
struct TYPE_6__ {TYPE_1__ dptr; } ;
struct nvme_command {TYPE_2__ common; } ;
struct TYPE_7__ {int icdoff; } ;
struct TYPE_8__ {TYPE_3__ ctrl; } ;


 int NVME_SGL_FMT_DATA_DESC ;
 int NVME_SGL_FMT_OFFSET ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void nvme_tcp_set_sg_inline(struct nvme_tcp_queue *queue,
  struct nvme_command *c, u32 data_len)
{
 struct nvme_sgl_desc *sg = &c->common.dptr.sgl;

 sg->addr = cpu_to_le64(queue->ctrl->ctrl.icdoff);
 sg->length = cpu_to_le32(data_len);
 sg->type = (NVME_SGL_FMT_DATA_DESC << 4) | NVME_SGL_FMT_OFFSET;
}
