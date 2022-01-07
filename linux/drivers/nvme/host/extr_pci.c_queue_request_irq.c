
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvme_queue {int qid; int cq_vector; TYPE_2__* dev; } ;
struct TYPE_3__ {int instance; } ;
struct TYPE_4__ {TYPE_1__ ctrl; int dev; } ;


 int * nvme_irq ;
 int * nvme_irq_check ;
 int pci_request_irq (struct pci_dev*,int ,int *,int *,struct nvme_queue*,char*,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;
 scalar_t__ use_threaded_interrupts ;

__attribute__((used)) static int queue_request_irq(struct nvme_queue *nvmeq)
{
 struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
 int nr = nvmeq->dev->ctrl.instance;

 if (use_threaded_interrupts) {
  return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
    nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 } else {
  return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq,
    ((void*)0), nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 }
}
