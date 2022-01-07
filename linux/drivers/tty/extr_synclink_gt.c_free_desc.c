
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int * tbufs; int * rbufs; int * bufs; int bufs_dma_addr; int pdev; } ;


 int DESC_LIST_SIZE ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void free_desc(struct slgt_info *info)
{
 if (info->bufs != ((void*)0)) {
  pci_free_consistent(info->pdev, DESC_LIST_SIZE, info->bufs, info->bufs_dma_addr);
  info->bufs = ((void*)0);
  info->rbufs = ((void*)0);
  info->tbufs = ((void*)0);
 }
}
