
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; } ;
struct rtl8180_tx_ring {size_t idx; int entries; int queue; struct rtl8180_tx_desc* desc; } ;
struct rtl8180_tx_desc {int tx_buf; int flags; } ;
struct rtl8180_priv {int pdev; struct rtl8180_tx_ring* tx_ring; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_3__ {int count; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int PCI_DMA_TODEVICE ;
 int RTL818X_TX_DESC_FLAG_OWN ;
 int RTL818X_TX_DESC_FLAG_TX_OK ;
 struct sk_buff* __skb_dequeue (int *) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_wake_queue (struct ieee80211_hw*,unsigned int) ;
 int le32_to_cpu (int ) ;
 int pci_unmap_single (int ,int,int ,int ) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static void rtl8180_handle_tx(struct ieee80211_hw *dev, unsigned int prio)
{
 struct rtl8180_priv *priv = dev->priv;
 struct rtl8180_tx_ring *ring = &priv->tx_ring[prio];

 while (skb_queue_len(&ring->queue)) {
  struct rtl8180_tx_desc *entry = &ring->desc[ring->idx];
  struct sk_buff *skb;
  struct ieee80211_tx_info *info;
  u32 flags = le32_to_cpu(entry->flags);

  if (flags & RTL818X_TX_DESC_FLAG_OWN)
   return;

  ring->idx = (ring->idx + 1) % ring->entries;
  skb = __skb_dequeue(&ring->queue);
  pci_unmap_single(priv->pdev, le32_to_cpu(entry->tx_buf),
     skb->len, PCI_DMA_TODEVICE);

  info = IEEE80211_SKB_CB(skb);
  ieee80211_tx_info_clear_status(info);

  if (!(info->flags & IEEE80211_TX_CTL_NO_ACK) &&
      (flags & RTL818X_TX_DESC_FLAG_TX_OK))
   info->flags |= IEEE80211_TX_STAT_ACK;

  info->status.rates[0].count = (flags & 0xFF) + 1;

  ieee80211_tx_status_irqsafe(dev, skb);
  if (ring->entries - skb_queue_len(&ring->queue) == 2)
   ieee80211_wake_queue(dev, prio);
 }
}
