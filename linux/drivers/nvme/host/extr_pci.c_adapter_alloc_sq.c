
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_queue {int q_depth; int sq_dma_addr; } ;
struct nvme_ctrl {int quirks; int admin_q; } ;
struct nvme_dev {struct nvme_ctrl ctrl; } ;
struct TYPE_2__ {void* cqid; void* sq_flags; void* qsize; void* sqid; int prp1; int opcode; } ;
struct nvme_command {TYPE_1__ create_sq; } ;
typedef int c ;


 int NVME_QUEUE_PHYS_CONTIG ;
 int NVME_QUIRK_MEDIUM_PRIO_SQ ;
 int NVME_SQ_PRIO_MEDIUM ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_create_sq ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static int adapter_alloc_sq(struct nvme_dev *dev, u16 qid,
      struct nvme_queue *nvmeq)
{
 struct nvme_ctrl *ctrl = &dev->ctrl;
 struct nvme_command c;
 int flags = NVME_QUEUE_PHYS_CONTIG;






 if (ctrl->quirks & NVME_QUIRK_MEDIUM_PRIO_SQ)
  flags |= NVME_SQ_PRIO_MEDIUM;





 memset(&c, 0, sizeof(c));
 c.create_sq.opcode = nvme_admin_create_sq;
 c.create_sq.prp1 = cpu_to_le64(nvmeq->sq_dma_addr);
 c.create_sq.sqid = cpu_to_le16(qid);
 c.create_sq.qsize = cpu_to_le16(nvmeq->q_depth - 1);
 c.create_sq.sq_flags = cpu_to_le16(flags);
 c.create_sq.cqid = cpu_to_le16(qid);

 return nvme_submit_sync_cmd(dev->ctrl.admin_q, &c, ((void*)0), 0);
}
