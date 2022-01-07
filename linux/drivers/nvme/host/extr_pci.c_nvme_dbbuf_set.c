
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; int admin_q; } ;
struct nvme_dev {TYPE_1__ ctrl; int dbbuf_eis_dma_addr; int dbbuf_dbs_dma_addr; int dbbuf_dbs; } ;
struct TYPE_4__ {void* prp2; void* prp1; int opcode; } ;
struct nvme_command {TYPE_2__ dbbuf; } ;
typedef int c ;


 void* cpu_to_le64 (int ) ;
 int dev_warn (int ,char*) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_dbbuf ;
 int nvme_dbbuf_dma_free (struct nvme_dev*) ;
 scalar_t__ nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static void nvme_dbbuf_set(struct nvme_dev *dev)
{
 struct nvme_command c;

 if (!dev->dbbuf_dbs)
  return;

 memset(&c, 0, sizeof(c));
 c.dbbuf.opcode = nvme_admin_dbbuf;
 c.dbbuf.prp1 = cpu_to_le64(dev->dbbuf_dbs_dma_addr);
 c.dbbuf.prp2 = cpu_to_le64(dev->dbbuf_eis_dma_addr);

 if (nvme_submit_sync_cmd(dev->ctrl.admin_q, &c, ((void*)0), 0)) {
  dev_warn(dev->ctrl.device, "unable to set dbbuf\n");

  nvme_dbbuf_dma_free(dev);
 }
}
