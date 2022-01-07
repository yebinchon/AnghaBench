
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rtw_pci_tx_ring {int queue; } ;
struct rtw_pci_tx_data {int dma; } ;
struct rtw_pci {int pdev; } ;
typedef int dma_addr_t ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct rtw_pci_tx_data* rtw_pci_get_tx_data (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void rtw_pci_release_rsvd_page(struct rtw_pci *rtwpci,
          struct rtw_pci_tx_ring *ring)
{
 struct sk_buff *prev = skb_dequeue(&ring->queue);
 struct rtw_pci_tx_data *tx_data;
 dma_addr_t dma;

 if (!prev)
  return;

 tx_data = rtw_pci_get_tx_data(prev);
 dma = tx_data->dma;
 pci_unmap_single(rtwpci->pdev, dma, prev->len,
    PCI_DMA_TODEVICE);
 dev_kfree_skb_any(prev);
}
