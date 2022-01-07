
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int pdev; } ;
struct slgt_desc {int * buf; int buf_dma_addr; } ;


 int DMABUFSIZE ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void free_bufs(struct slgt_info *info, struct slgt_desc *bufs, int count)
{
 int i;
 for (i=0; i < count; i++) {
  if (bufs[i].buf == ((void*)0))
   continue;
  pci_free_consistent(info->pdev, DMABUFSIZE, bufs[i].buf, bufs[i].buf_dma_addr);
  bufs[i].buf = ((void*)0);
 }
}
