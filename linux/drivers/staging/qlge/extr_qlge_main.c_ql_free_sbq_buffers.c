
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx_ring {int sbq_len; struct bq_desc* sbq; } ;
struct ql_adapter {int pdev; int ndev; } ;
struct TYPE_2__ {int * skb; } ;
struct bq_desc {TYPE_1__ p; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_addr (struct bq_desc*,int ) ;
 int dma_unmap_len (struct bq_desc*,int ) ;
 int ifup ;
 int mapaddr ;
 int maplen ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring)
{
 int i;
 struct bq_desc *sbq_desc;

 for (i = 0; i < rx_ring->sbq_len; i++) {
  sbq_desc = &rx_ring->sbq[i];
  if (sbq_desc == ((void*)0)) {
   netif_err(qdev, ifup, qdev->ndev,
      "sbq_desc %d is NULL.\n", i);
   return;
  }
  if (sbq_desc->p.skb) {
   pci_unmap_single(qdev->pdev,
      dma_unmap_addr(sbq_desc, mapaddr),
      dma_unmap_len(sbq_desc, maplen),
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb(sbq_desc->p.skb);
   sbq_desc->p.skb = ((void*)0);
  }
 }
}
