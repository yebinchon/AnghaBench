
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_queue {int sq_cmds; int sq_dma_addr; int flags; } ;
struct nvme_dev {int cmbsz; int dev; scalar_t__ cmb_use_sqes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVMEQ_SQ_CMB ;
 int NVME_CMBSZ_SQS ;
 int SQ_SIZE (struct nvme_queue*) ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int pci_alloc_p2pmem (struct pci_dev*,int ) ;
 int pci_free_p2pmem (struct pci_dev*,int ,int ) ;
 int pci_p2pmem_virt_to_bus (struct pci_dev*,int ) ;
 int set_bit (int ,int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_alloc_sq_cmds(struct nvme_dev *dev, struct nvme_queue *nvmeq,
    int qid)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
  nvmeq->sq_cmds = pci_alloc_p2pmem(pdev, SQ_SIZE(nvmeq));
  if (nvmeq->sq_cmds) {
   nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
       nvmeq->sq_cmds);
   if (nvmeq->sq_dma_addr) {
    set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
    return 0;
   }

   pci_free_p2pmem(pdev, nvmeq->sq_cmds, SQ_SIZE(nvmeq));
  }
 }

 nvmeq->sq_cmds = dma_alloc_coherent(dev->dev, SQ_SIZE(nvmeq),
    &nvmeq->sq_dma_addr, GFP_KERNEL);
 if (!nvmeq->sq_cmds)
  return -ENOMEM;
 return 0;
}
