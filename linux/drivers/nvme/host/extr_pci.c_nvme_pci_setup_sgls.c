
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct request {int dummy; } ;
struct nvme_sgl_desc {int dummy; } ;
struct TYPE_2__ {struct nvme_sgl_desc sgl; } ;
struct nvme_rw_command {TYPE_1__ dptr; int flags; } ;
struct nvme_iod {int npages; int first_dma; struct scatterlist* sg; } ;
struct nvme_dev {struct dma_pool* prp_page_pool; struct dma_pool* prp_small_pool; } ;
struct dma_pool {int dummy; } ;
typedef int dma_addr_t ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int GFP_ATOMIC ;
 int NVME_CMD_SGL_METABUF ;
 int SGES_PER_PAGE ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 struct nvme_sgl_desc* dma_pool_alloc (struct dma_pool*,int ,int *) ;
 struct nvme_sgl_desc** nvme_pci_iod_list (struct request*) ;
 int nvme_pci_sgl_set_data (struct nvme_sgl_desc*,struct scatterlist*) ;
 int nvme_pci_sgl_set_seg (struct nvme_sgl_desc*,int ,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static blk_status_t nvme_pci_setup_sgls(struct nvme_dev *dev,
  struct request *req, struct nvme_rw_command *cmd, int entries)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 struct dma_pool *pool;
 struct nvme_sgl_desc *sg_list;
 struct scatterlist *sg = iod->sg;
 dma_addr_t sgl_dma;
 int i = 0;


 cmd->flags = NVME_CMD_SGL_METABUF;

 if (entries == 1) {
  nvme_pci_sgl_set_data(&cmd->dptr.sgl, sg);
  return BLK_STS_OK;
 }

 if (entries <= (256 / sizeof(struct nvme_sgl_desc))) {
  pool = dev->prp_small_pool;
  iod->npages = 0;
 } else {
  pool = dev->prp_page_pool;
  iod->npages = 1;
 }

 sg_list = dma_pool_alloc(pool, GFP_ATOMIC, &sgl_dma);
 if (!sg_list) {
  iod->npages = -1;
  return BLK_STS_RESOURCE;
 }

 nvme_pci_iod_list(req)[0] = sg_list;
 iod->first_dma = sgl_dma;

 nvme_pci_sgl_set_seg(&cmd->dptr.sgl, sgl_dma, entries);

 do {
  if (i == SGES_PER_PAGE) {
   struct nvme_sgl_desc *old_sg_desc = sg_list;
   struct nvme_sgl_desc *link = &old_sg_desc[i - 1];

   sg_list = dma_pool_alloc(pool, GFP_ATOMIC, &sgl_dma);
   if (!sg_list)
    return BLK_STS_RESOURCE;

   i = 0;
   nvme_pci_iod_list(req)[iod->npages++] = sg_list;
   sg_list[i++] = *link;
   nvme_pci_sgl_set_seg(link, sgl_dma, entries);
  }

  nvme_pci_sgl_set_data(&sg_list[i++], sg);
  sg = sg_next(sg);
 } while (--entries > 0);

 return BLK_STS_OK;
}
