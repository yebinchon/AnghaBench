
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct rx_ring {size_t sbq_clean_idx; int sbq_free_cnt; size_t sbq_len; int sbq_prod_idx; int sbq_prod_idx_db_reg; int sbq_buf_size; struct bq_desc* sbq; } ;
struct ql_adapter {int ndev; int pdev; } ;
struct TYPE_5__ {TYPE_2__* skb; } ;
struct bq_desc {size_t index; int * addr; TYPE_1__ p; } ;
struct TYPE_6__ {int data; } ;


 int KERN_DEBUG ;
 int PCI_DMA_FROMDEVICE ;
 int QLGE_SB_PAD ;
 int SMALL_BUFFER_SIZE ;
 int cpu_to_le64 (int ) ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int dma_unmap_addr_set (struct bq_desc*,int ,int ) ;
 int dma_unmap_len_set (struct bq_desc*,int ,int ) ;
 int ifup ;
 int mapaddr ;
 int maplen ;
 TYPE_2__* netdev_alloc_skb (int ,int ) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,size_t) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int ql_write_db_reg (size_t,int ) ;
 int rx_status ;
 int skb_reserve (TYPE_2__*,int ) ;

__attribute__((used)) static void ql_update_sbq(struct ql_adapter *qdev, struct rx_ring *rx_ring)
{
 u32 clean_idx = rx_ring->sbq_clean_idx;
 u32 start_idx = clean_idx;
 struct bq_desc *sbq_desc;
 u64 map;
 int i;

 while (rx_ring->sbq_free_cnt > 16) {
  for (i = (rx_ring->sbq_clean_idx % 16); i < 16; i++) {
   sbq_desc = &rx_ring->sbq[clean_idx];
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "sbq: try cleaning clean_idx = %d.\n",
         clean_idx);
   if (sbq_desc->p.skb == ((void*)0)) {
    netif_printk(qdev, rx_status, KERN_DEBUG,
          qdev->ndev,
          "sbq: getting new skb for index %d.\n",
          sbq_desc->index);
    sbq_desc->p.skb =
        netdev_alloc_skb(qdev->ndev,
           SMALL_BUFFER_SIZE);
    if (sbq_desc->p.skb == ((void*)0)) {
     rx_ring->sbq_clean_idx = clean_idx;
     return;
    }
    skb_reserve(sbq_desc->p.skb, QLGE_SB_PAD);
    map = pci_map_single(qdev->pdev,
           sbq_desc->p.skb->data,
           rx_ring->sbq_buf_size,
           PCI_DMA_FROMDEVICE);
    if (pci_dma_mapping_error(qdev->pdev, map)) {
     netif_err(qdev, ifup, qdev->ndev,
        "PCI mapping failed.\n");
     rx_ring->sbq_clean_idx = clean_idx;
     dev_kfree_skb_any(sbq_desc->p.skb);
     sbq_desc->p.skb = ((void*)0);
     return;
    }
    dma_unmap_addr_set(sbq_desc, mapaddr, map);
    dma_unmap_len_set(sbq_desc, maplen,
        rx_ring->sbq_buf_size);
    *sbq_desc->addr = cpu_to_le64(map);
   }

   clean_idx++;
   if (clean_idx == rx_ring->sbq_len)
    clean_idx = 0;
  }
  rx_ring->sbq_clean_idx = clean_idx;
  rx_ring->sbq_prod_idx += 16;
  if (rx_ring->sbq_prod_idx == rx_ring->sbq_len)
   rx_ring->sbq_prod_idx = 0;
  rx_ring->sbq_free_cnt -= 16;
 }

 if (start_idx != clean_idx) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "sbq: updating prod idx = %d.\n",
        rx_ring->sbq_prod_idx);
  ql_write_db_reg(rx_ring->sbq_prod_idx,
    rx_ring->sbq_prod_idx_db_reg);
 }
}
