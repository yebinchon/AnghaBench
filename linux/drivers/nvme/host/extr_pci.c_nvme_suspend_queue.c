
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_queue {int cq_vector; TYPE_1__* dev; int flags; int qid; } ;
struct TYPE_4__ {scalar_t__ admin_q; } ;
struct TYPE_3__ {int dev; TYPE_2__ ctrl; int online_queues; } ;


 int NVMEQ_ENABLED ;
 int NVMEQ_POLLED ;
 int blk_mq_quiesce_queue (scalar_t__) ;
 int mb () ;
 int pci_free_irq (int ,int ,struct nvme_queue*) ;
 int test_and_clear_bit (int ,int *) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static int nvme_suspend_queue(struct nvme_queue *nvmeq)
{
 if (!test_and_clear_bit(NVMEQ_ENABLED, &nvmeq->flags))
  return 1;


 mb();

 nvmeq->dev->online_queues--;
 if (!nvmeq->qid && nvmeq->dev->ctrl.admin_q)
  blk_mq_quiesce_queue(nvmeq->dev->ctrl.admin_q);
 if (!test_and_clear_bit(NVMEQ_POLLED, &nvmeq->flags))
  pci_free_irq(to_pci_dev(nvmeq->dev->dev), nvmeq->cq_vector, nvmeq);
 return 0;
}
