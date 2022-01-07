
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rtl8180_tx_ring {size_t idx; int entries; struct rtl8180_tx_desc* desc; int dma; int queue; } ;
struct rtl8180_tx_desc {int tx_buf; } ;
struct rtl8180_priv {int pdev; struct rtl8180_tx_ring* tx_ring; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;


 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_free_consistent (int ,int,struct rtl8180_tx_desc*,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static void rtl8180_free_tx_ring(struct ieee80211_hw *dev, unsigned int prio)
{
 struct rtl8180_priv *priv = dev->priv;
 struct rtl8180_tx_ring *ring = &priv->tx_ring[prio];

 while (skb_queue_len(&ring->queue)) {
  struct rtl8180_tx_desc *entry = &ring->desc[ring->idx];
  struct sk_buff *skb = __skb_dequeue(&ring->queue);

  pci_unmap_single(priv->pdev, le32_to_cpu(entry->tx_buf),
     skb->len, PCI_DMA_TODEVICE);
  kfree_skb(skb);
  ring->idx = (ring->idx + 1) % ring->entries;
 }

 pci_free_consistent(priv->pdev, sizeof(*ring->desc)*ring->entries,
       ring->desc, ring->dma);
 ring->desc = ((void*)0);
}
