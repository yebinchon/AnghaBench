
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct nvme_queue {int cq_vector; int cq_poll_lock; int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int NVMEQ_POLLED ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int nvme_complete_cqes (struct nvme_queue*,int ,int ) ;
 int nvme_process_cq (struct nvme_queue*,int *,int *,unsigned int) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_poll_irqdisable(struct nvme_queue *nvmeq, unsigned int tag)
{
 struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
 u16 start, end;
 int found;






 if (test_bit(NVMEQ_POLLED, &nvmeq->flags)) {
  spin_lock(&nvmeq->cq_poll_lock);
  found = nvme_process_cq(nvmeq, &start, &end, tag);
  spin_unlock(&nvmeq->cq_poll_lock);
 } else {
  disable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
  found = nvme_process_cq(nvmeq, &start, &end, tag);
  enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
 }

 nvme_complete_cqes(nvmeq, start, end);
 return found;
}
