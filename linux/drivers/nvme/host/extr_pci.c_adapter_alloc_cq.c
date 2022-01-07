
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct nvme_queue {int q_depth; int cq_dma_addr; int flags; } ;
struct TYPE_4__ {int admin_q; } ;
struct nvme_dev {TYPE_2__ ctrl; } ;
struct TYPE_3__ {void* irq_vector; void* cq_flags; void* qsize; void* cqid; int prp1; int opcode; } ;
struct nvme_command {TYPE_1__ create_cq; } ;
typedef int s16 ;
typedef int c ;


 int NVMEQ_POLLED ;
 int NVME_CQ_IRQ_ENABLED ;
 int NVME_QUEUE_PHYS_CONTIG ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_create_cq ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int adapter_alloc_cq(struct nvme_dev *dev, u16 qid,
  struct nvme_queue *nvmeq, s16 vector)
{
 struct nvme_command c;
 int flags = NVME_QUEUE_PHYS_CONTIG;

 if (!test_bit(NVMEQ_POLLED, &nvmeq->flags))
  flags |= NVME_CQ_IRQ_ENABLED;





 memset(&c, 0, sizeof(c));
 c.create_cq.opcode = nvme_admin_create_cq;
 c.create_cq.prp1 = cpu_to_le64(nvmeq->cq_dma_addr);
 c.create_cq.cqid = cpu_to_le16(qid);
 c.create_cq.qsize = cpu_to_le16(nvmeq->q_depth - 1);
 c.create_cq.cq_flags = cpu_to_le16(flags);
 c.create_cq.irq_vector = cpu_to_le16(vector);

 return nvme_submit_sync_cmd(dev->ctrl.admin_q, &c, ((void*)0), 0);
}
