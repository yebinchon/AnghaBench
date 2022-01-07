
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct rtl_priv {scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int rxringcount; TYPE_1__* rx_ring; int pdev; int rxbuffersize; } ;
struct ieee80211_hw {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * desc; int dma; int * buffer_desc; struct sk_buff** rx_buf; } ;


 int PCI_DMA_FROMDEVICE ;
 int kfree_skb (struct sk_buff*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_pci_free_rx_ring(struct ieee80211_hw *hw, int rxring_idx)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 int i;


 for (i = 0; i < rtlpci->rxringcount; i++) {
  struct sk_buff *skb = rtlpci->rx_ring[rxring_idx].rx_buf[i];

  if (!skb)
   continue;
  pci_unmap_single(rtlpci->pdev, *((dma_addr_t *)skb->cb),
     rtlpci->rxbuffersize, PCI_DMA_FROMDEVICE);
  kfree_skb(skb);
 }


 if (rtlpriv->use_new_trx_flow) {
  pci_free_consistent(rtlpci->pdev,
        sizeof(*rtlpci->rx_ring[rxring_idx].
        buffer_desc) * rtlpci->rxringcount,
        rtlpci->rx_ring[rxring_idx].buffer_desc,
        rtlpci->rx_ring[rxring_idx].dma);
  rtlpci->rx_ring[rxring_idx].buffer_desc = ((void*)0);
 } else {
  pci_free_consistent(rtlpci->pdev,
        sizeof(*rtlpci->rx_ring[rxring_idx].desc) *
        rtlpci->rxringcount,
        rtlpci->rx_ring[rxring_idx].desc,
        rtlpci->rx_ring[rxring_idx].dma);
  rtlpci->rx_ring[rxring_idx].desc = ((void*)0);
 }
}
