
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ntb_transport_mw {int * virt_addr; int * alloc_addr; scalar_t__ alloc_size; scalar_t__ buff_size; scalar_t__ xlat_size; int dma_addr; } ;
struct ntb_transport_ctx {TYPE_1__* ndev; struct ntb_transport_mw* mw_vec; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int PIDX ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 int ntb_mw_clear_trans (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ntb_free_mw(struct ntb_transport_ctx *nt, int num_mw)
{
 struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];
 struct pci_dev *pdev = nt->ndev->pdev;

 if (!mw->virt_addr)
  return;

 ntb_mw_clear_trans(nt->ndev, PIDX, num_mw);
 dma_free_coherent(&pdev->dev, mw->alloc_size,
     mw->alloc_addr, mw->dma_addr);
 mw->xlat_size = 0;
 mw->buff_size = 0;
 mw->alloc_size = 0;
 mw->alloc_addr = ((void*)0);
 mw->virt_addr = ((void*)0);
}
