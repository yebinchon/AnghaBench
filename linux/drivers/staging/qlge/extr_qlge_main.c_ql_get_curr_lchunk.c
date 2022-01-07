
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_ring {scalar_t__ lbq_buf_size; } ;
struct ql_adapter {int pdev; } ;
struct TYPE_3__ {scalar_t__ offset; int map; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_addr (struct bq_desc*,int ) ;
 int mapaddr ;
 int pci_dma_sync_single_for_cpu (int ,int ,scalar_t__,int ) ;
 int pci_unmap_page (int ,int ,scalar_t__,int ) ;
 struct bq_desc* ql_get_curr_lbuf (struct rx_ring*) ;
 scalar_t__ ql_lbq_block_size (struct ql_adapter*) ;

__attribute__((used)) static struct bq_desc *ql_get_curr_lchunk(struct ql_adapter *qdev,
  struct rx_ring *rx_ring)
{
 struct bq_desc *lbq_desc = ql_get_curr_lbuf(rx_ring);

 pci_dma_sync_single_for_cpu(qdev->pdev,
     dma_unmap_addr(lbq_desc, mapaddr),
        rx_ring->lbq_buf_size,
     PCI_DMA_FROMDEVICE);




 if ((lbq_desc->p.pg_chunk.offset + rx_ring->lbq_buf_size)
     == ql_lbq_block_size(qdev))
  pci_unmap_page(qdev->pdev,
    lbq_desc->p.pg_chunk.map,
    ql_lbq_block_size(qdev),
    PCI_DMA_FROMDEVICE);
 return lbq_desc;
}
