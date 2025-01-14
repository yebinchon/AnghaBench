
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_sgl_desc {int addr; } ;
struct nvme_iod {int npages; int sg; scalar_t__ use_sgl; int nents; scalar_t__ dma_len; int first_dma; } ;
struct TYPE_2__ {int page_size; } ;
struct nvme_dev {int iod_mempool; int prp_page_pool; int prp_small_pool; int dev; TYPE_1__ ctrl; } ;
typedef int dma_addr_t ;
typedef int __le64 ;


 int SGES_PER_PAGE ;
 int WARN_ON_ONCE (int) ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int dma_pool_free (int ,void*,int ) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 scalar_t__ is_pci_p2pdma_page (int ) ;
 int le64_to_cpu (int ) ;
 int mempool_free (int ,int ) ;
 void** nvme_pci_iod_list (struct request*) ;
 int pci_p2pdma_unmap_sg (int ,int ,int ,int ) ;
 int rq_dma_dir (struct request*) ;
 int sg_page (int ) ;

__attribute__((used)) static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 const int last_prp = dev->ctrl.page_size / sizeof(__le64) - 1;
 dma_addr_t dma_addr = iod->first_dma, next_dma_addr;
 int i;

 if (iod->dma_len) {
  dma_unmap_page(dev->dev, dma_addr, iod->dma_len,
          rq_dma_dir(req));
  return;
 }

 WARN_ON_ONCE(!iod->nents);

 if (is_pci_p2pdma_page(sg_page(iod->sg)))
  pci_p2pdma_unmap_sg(dev->dev, iod->sg, iod->nents,
        rq_dma_dir(req));
 else
  dma_unmap_sg(dev->dev, iod->sg, iod->nents, rq_dma_dir(req));


 if (iod->npages == 0)
  dma_pool_free(dev->prp_small_pool, nvme_pci_iod_list(req)[0],
   dma_addr);

 for (i = 0; i < iod->npages; i++) {
  void *addr = nvme_pci_iod_list(req)[i];

  if (iod->use_sgl) {
   struct nvme_sgl_desc *sg_list = addr;

   next_dma_addr =
       le64_to_cpu((sg_list[SGES_PER_PAGE - 1]).addr);
  } else {
   __le64 *prp_list = addr;

   next_dma_addr = le64_to_cpu(prp_list[last_prp]);
  }

  dma_pool_free(dev->prp_page_pool, addr, dma_addr);
  dma_addr = next_dma_addr;
 }

 mempool_free(iod->sg, dev->iod_mempool);
}
