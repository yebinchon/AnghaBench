
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvme_sgl_desc {int type; int length; scalar_t__ addr; } ;
struct TYPE_3__ {struct nvme_sgl_desc sgl; } ;
struct TYPE_4__ {TYPE_1__ dptr; } ;
struct nvme_command {TYPE_2__ common; } ;


 int NVME_SGL_FMT_TRANSPORT_A ;
 int NVME_TRANSPORT_SGL_DATA_DESC ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void nvme_tcp_set_sg_host_data(struct nvme_command *c,
  u32 data_len)
{
 struct nvme_sgl_desc *sg = &c->common.dptr.sgl;

 sg->addr = 0;
 sg->length = cpu_to_le32(data_len);
 sg->type = (NVME_TRANSPORT_SGL_DATA_DESC << 4) |
   NVME_SGL_FMT_TRANSPORT_A;
}
