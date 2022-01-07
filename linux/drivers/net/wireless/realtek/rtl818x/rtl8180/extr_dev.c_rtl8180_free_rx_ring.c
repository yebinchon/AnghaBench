
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct rtl8180_priv {int rx_ring_sz; int * rx_ring; int rx_ring_dma; int pdev; struct sk_buff** rx_buf; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
typedef int dma_addr_t ;


 int MAX_RX_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int kfree_skb (struct sk_buff*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void rtl8180_free_rx_ring(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 int i;

 for (i = 0; i < 32; i++) {
  struct sk_buff *skb = priv->rx_buf[i];
  if (!skb)
   continue;

  pci_unmap_single(priv->pdev,
     *((dma_addr_t *)skb->cb),
     MAX_RX_SIZE, PCI_DMA_FROMDEVICE);
  kfree_skb(skb);
 }

 pci_free_consistent(priv->pdev, priv->rx_ring_sz * 32,
       priv->rx_ring, priv->rx_ring_dma);
 priv->rx_ring = ((void*)0);
}
