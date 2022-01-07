
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nvmet_rdma_device {int inline_page_count; int device; int inline_data_size; } ;
struct nvmet_rdma_cmd {struct ib_sge* sge; struct scatterlist* inline_sg; } ;
struct ib_sge {scalar_t__ length; int addr; } ;


 int DMA_FROM_DEVICE ;
 int __free_page (scalar_t__) ;
 int ib_dma_unmap_page (int ,int ,scalar_t__,int ) ;
 scalar_t__ sg_page (struct scatterlist*) ;

__attribute__((used)) static void nvmet_rdma_free_inline_pages(struct nvmet_rdma_device *ndev,
    struct nvmet_rdma_cmd *c)
{
 struct scatterlist *sg;
 struct ib_sge *sge;
 int i;

 if (!ndev->inline_data_size)
  return;

 sg = c->inline_sg;
 sge = &c->sge[1];

 for (i = 0; i < ndev->inline_page_count; i++, sg++, sge++) {
  if (sge->length)
   ib_dma_unmap_page(ndev->device, sge->addr,
     sge->length, DMA_FROM_DEVICE);
  if (sg_page(sg))
   __free_page(sg_page(sg));
 }
}
