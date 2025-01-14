
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_sgl_desc {int type; void* length; int addr; } ;
typedef int dma_addr_t ;


 int NVME_SGL_FMT_LAST_SEG_DESC ;
 int NVME_SGL_FMT_SEG_DESC ;
 int PAGE_SIZE ;
 int SGES_PER_PAGE ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void nvme_pci_sgl_set_seg(struct nvme_sgl_desc *sge,
  dma_addr_t dma_addr, int entries)
{
 sge->addr = cpu_to_le64(dma_addr);
 if (entries < SGES_PER_PAGE) {
  sge->length = cpu_to_le32(entries * sizeof(*sge));
  sge->type = NVME_SGL_FMT_LAST_SEG_DESC << 4;
 } else {
  sge->length = cpu_to_le32(PAGE_SIZE);
  sge->type = NVME_SGL_FMT_SEG_DESC << 4;
 }
}
