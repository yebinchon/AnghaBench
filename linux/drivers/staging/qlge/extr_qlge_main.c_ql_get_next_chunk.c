
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ offset; int last_flag; int * page; int va; int map; } ;
struct rx_ring {scalar_t__ lbq_buf_size; TYPE_1__ pg_chunk; } ;
struct ql_adapter {int ndev; int lbq_buf_order; int pdev; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;
 int __GFP_COMP ;
 int __free_pages (int *,int ) ;
 int * alloc_pages (int,int ) ;
 int drv ;
 int get_page (int *) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int page_address (int *) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,int *,int ,scalar_t__,int ) ;
 scalar_t__ ql_lbq_block_size (struct ql_adapter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ql_get_next_chunk(struct ql_adapter *qdev, struct rx_ring *rx_ring,
      struct bq_desc *lbq_desc)
{
 if (!rx_ring->pg_chunk.page) {
  u64 map;
  rx_ring->pg_chunk.page = alloc_pages(__GFP_COMP | GFP_ATOMIC,
      qdev->lbq_buf_order);
  if (unlikely(!rx_ring->pg_chunk.page)) {
   netif_err(qdev, drv, qdev->ndev,
      "page allocation failed.\n");
   return -ENOMEM;
  }
  rx_ring->pg_chunk.offset = 0;
  map = pci_map_page(qdev->pdev, rx_ring->pg_chunk.page,
     0, ql_lbq_block_size(qdev),
     PCI_DMA_FROMDEVICE);
  if (pci_dma_mapping_error(qdev->pdev, map)) {
   __free_pages(rx_ring->pg_chunk.page,
     qdev->lbq_buf_order);
   rx_ring->pg_chunk.page = ((void*)0);
   netif_err(qdev, drv, qdev->ndev,
      "PCI mapping failed.\n");
   return -ENOMEM;
  }
  rx_ring->pg_chunk.map = map;
  rx_ring->pg_chunk.va = page_address(rx_ring->pg_chunk.page);
 }




 lbq_desc->p.pg_chunk = rx_ring->pg_chunk;




 rx_ring->pg_chunk.offset += rx_ring->lbq_buf_size;
 if (rx_ring->pg_chunk.offset == ql_lbq_block_size(qdev)) {
  rx_ring->pg_chunk.page = ((void*)0);
  lbq_desc->p.pg_chunk.last_flag = 1;
 } else {
  rx_ring->pg_chunk.va += rx_ring->lbq_buf_size;
  get_page(rx_ring->pg_chunk.page);
  lbq_desc->p.pg_chunk.last_flag = 0;
 }
 return 0;
}
