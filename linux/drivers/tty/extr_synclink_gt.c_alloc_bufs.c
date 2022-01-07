
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int pdev; } ;
struct slgt_desc {scalar_t__ buf_dma_addr; int pbuf; int * buf; } ;


 int DMABUFSIZE ;
 int ENOMEM ;
 int cpu_to_le32 (unsigned int) ;
 int * pci_alloc_consistent (int ,int ,scalar_t__*) ;

__attribute__((used)) static int alloc_bufs(struct slgt_info *info, struct slgt_desc *bufs, int count)
{
 int i;
 for (i=0; i < count; i++) {
  if ((bufs[i].buf = pci_alloc_consistent(info->pdev, DMABUFSIZE, &bufs[i].buf_dma_addr)) == ((void*)0))
   return -ENOMEM;
  bufs[i].pbuf = cpu_to_le32((unsigned int)bufs[i].buf_dma_addr);
 }
 return 0;
}
