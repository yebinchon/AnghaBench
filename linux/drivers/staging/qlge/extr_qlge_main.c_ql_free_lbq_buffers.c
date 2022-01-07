
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {int * page; int map; } ;
struct rx_ring {size_t lbq_curr_idx; size_t lbq_clean_idx; size_t lbq_len; TYPE_3__ pg_chunk; struct bq_desc* lbq; } ;
struct ql_adapter {int pdev; } ;
struct TYPE_4__ {int * page; scalar_t__ last_flag; int map; } ;
struct TYPE_5__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;


 int PCI_DMA_FROMDEVICE ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int put_page (int *) ;
 int ql_lbq_block_size (struct ql_adapter*) ;

__attribute__((used)) static void ql_free_lbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring)
{
 struct bq_desc *lbq_desc;

 uint32_t curr_idx, clean_idx;

 curr_idx = rx_ring->lbq_curr_idx;
 clean_idx = rx_ring->lbq_clean_idx;
 while (curr_idx != clean_idx) {
  lbq_desc = &rx_ring->lbq[curr_idx];

  if (lbq_desc->p.pg_chunk.last_flag) {
   pci_unmap_page(qdev->pdev,
    lbq_desc->p.pg_chunk.map,
    ql_lbq_block_size(qdev),
           PCI_DMA_FROMDEVICE);
   lbq_desc->p.pg_chunk.last_flag = 0;
  }

  put_page(lbq_desc->p.pg_chunk.page);
  lbq_desc->p.pg_chunk.page = ((void*)0);

  if (++curr_idx == rx_ring->lbq_len)
   curr_idx = 0;

 }
 if (rx_ring->pg_chunk.page) {
  pci_unmap_page(qdev->pdev, rx_ring->pg_chunk.map,
   ql_lbq_block_size(qdev), PCI_DMA_FROMDEVICE);
  put_page(rx_ring->pg_chunk.page);
  rx_ring->pg_chunk.page = ((void*)0);
 }
}
