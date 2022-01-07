
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nvme_sgl_desc {int type; int length; int addr; } ;


 int NVME_SGL_FMT_DATA_DESC ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void nvme_pci_sgl_set_data(struct nvme_sgl_desc *sge,
  struct scatterlist *sg)
{
 sge->addr = cpu_to_le64(sg_dma_address(sg));
 sge->length = cpu_to_le32(sg_dma_len(sg));
 sge->type = NVME_SGL_FMT_DATA_DESC << 4;
}
