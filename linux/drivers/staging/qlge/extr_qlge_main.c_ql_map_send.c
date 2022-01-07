
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tx_ring_desc {int map_cnt; int * map; int oal; } ;
struct tx_buf_desc {void* len; void* addr; } ;
struct sk_buff {int * data; } ;
struct ql_adapter {int ndev; TYPE_2__* pdev; } ;
struct ob_mac_iocb_req {struct tx_buf_desc* tbd; } ;
struct oal {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int KERN_DEBUG ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TX_DESC_C ;
 int TX_DESC_E ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_addr_set (int *,int ,int ) ;
 int dma_unmap_len_set (int *,int ,int) ;
 int le32_to_cpu (void*) ;
 int mapaddr ;
 int maplen ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,int) ;
 int pci_dma_mapping_error (TYPE_2__*,int ) ;
 int pci_map_single (TYPE_2__*,int *,int,int ) ;
 int ql_unmap_send (struct ql_adapter*,struct tx_ring_desc*,int) ;
 int skb_frag_dma_map (int *,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int tx_queued ;

__attribute__((used)) static int ql_map_send(struct ql_adapter *qdev,
         struct ob_mac_iocb_req *mac_iocb_ptr,
         struct sk_buff *skb, struct tx_ring_desc *tx_ring_desc)
{
 int len = skb_headlen(skb);
 dma_addr_t map;
 int frag_idx, err, map_idx = 0;
 struct tx_buf_desc *tbd = mac_iocb_ptr->tbd;
 int frag_cnt = skb_shinfo(skb)->nr_frags;

 if (frag_cnt) {
  netif_printk(qdev, tx_queued, KERN_DEBUG, qdev->ndev,
        "frag_cnt = %d.\n", frag_cnt);
 }



 map = pci_map_single(qdev->pdev, skb->data, len, PCI_DMA_TODEVICE);

 err = pci_dma_mapping_error(qdev->pdev, map);
 if (err) {
  netif_err(qdev, tx_queued, qdev->ndev,
     "PCI mapping failed with error: %d\n", err);

  return NETDEV_TX_BUSY;
 }

 tbd->len = cpu_to_le32(len);
 tbd->addr = cpu_to_le64(map);
 dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
 dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen, len);
 map_idx++;
 for (frag_idx = 0; frag_idx < frag_cnt; frag_idx++, map_idx++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[frag_idx];
  tbd++;
  if (frag_idx == 6 && frag_cnt > 7) {
   map = pci_map_single(qdev->pdev, &tx_ring_desc->oal,
          sizeof(struct oal),
          PCI_DMA_TODEVICE);
   err = pci_dma_mapping_error(qdev->pdev, map);
   if (err) {
    netif_err(qdev, tx_queued, qdev->ndev,
       "PCI mapping outbound address list with error: %d\n",
       err);
    goto map_error;
   }

   tbd->addr = cpu_to_le64(map);





   tbd->len =
       cpu_to_le32((sizeof(struct tx_buf_desc) *
      (frag_cnt - frag_idx)) | TX_DESC_C);
   dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr,
        map);
   dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
       sizeof(struct oal));
   tbd = (struct tx_buf_desc *)&tx_ring_desc->oal;
   map_idx++;
  }

  map = skb_frag_dma_map(&qdev->pdev->dev, frag, 0, skb_frag_size(frag),
           DMA_TO_DEVICE);

  err = dma_mapping_error(&qdev->pdev->dev, map);
  if (err) {
   netif_err(qdev, tx_queued, qdev->ndev,
      "PCI mapping frags failed with error: %d.\n",
      err);
   goto map_error;
  }

  tbd->addr = cpu_to_le64(map);
  tbd->len = cpu_to_le32(skb_frag_size(frag));
  dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
  dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
      skb_frag_size(frag));

 }

 tx_ring_desc->map_cnt = map_idx;

 tbd->len = cpu_to_le32(le32_to_cpu(tbd->len) | TX_DESC_E);
 return NETDEV_TX_OK;

map_error:






 ql_unmap_send(qdev, tx_ring_desc, map_idx);
 return NETDEV_TX_BUSY;
}
