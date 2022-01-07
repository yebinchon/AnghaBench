
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_keyed_sgl_desc {int type; int key; int length; scalar_t__ addr; } ;
struct TYPE_3__ {struct nvme_keyed_sgl_desc ksgl; } ;
struct TYPE_4__ {TYPE_1__ dptr; } ;
struct nvme_command {TYPE_2__ common; } ;


 int NVME_KEY_SGL_FMT_DATA_DESC ;
 int put_unaligned_le24 (int ,int ) ;
 int put_unaligned_le32 (int ,int ) ;

__attribute__((used)) static int nvme_rdma_set_sg_null(struct nvme_command *c)
{
 struct nvme_keyed_sgl_desc *sg = &c->common.dptr.ksgl;

 sg->addr = 0;
 put_unaligned_le24(0, sg->length);
 put_unaligned_le32(0, sg->key);
 sg->type = NVME_KEY_SGL_FMT_DATA_DESC << 4;
 return 0;
}
