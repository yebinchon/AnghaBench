
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {void* sq_cmds; int sq_dma_addr; TYPE_1__* dev; int flags; int cq_dma_addr; scalar_t__ cqes; } ;
struct TYPE_2__ {int dev; } ;


 int CQ_SIZE (struct nvme_queue*) ;
 int NVMEQ_SQ_CMB ;
 int SQ_SIZE (struct nvme_queue*) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int pci_free_p2pmem (int ,void*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void nvme_free_queue(struct nvme_queue *nvmeq)
{
 dma_free_coherent(nvmeq->dev->dev, CQ_SIZE(nvmeq),
    (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
 if (!nvmeq->sq_cmds)
  return;

 if (test_and_clear_bit(NVMEQ_SQ_CMB, &nvmeq->flags)) {
  pci_free_p2pmem(to_pci_dev(nvmeq->dev->dev),
    nvmeq->sq_cmds, SQ_SIZE(nvmeq));
 } else {
  dma_free_coherent(nvmeq->dev->dev, SQ_SIZE(nvmeq),
    nvmeq->sq_cmds, nvmeq->sq_dma_addr);
 }
}
