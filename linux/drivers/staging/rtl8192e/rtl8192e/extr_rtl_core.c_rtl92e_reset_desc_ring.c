
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int TxBuffAddr; } ;
struct sk_buff {int len; } ;
struct rx_desc {int OWN; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int queue; struct tx_desc* desc; } ;
struct r8192_priv {int rxringcount; int irq_th_lock; int pdev; struct rtl8192_tx_ring* tx_ring; scalar_t__* rx_idx; struct rx_desc** rx_ring; } ;
struct net_device {int dummy; } ;


 int MAX_RX_QUEUE ;
 int MAX_TX_QUEUE_COUNT ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl92e_reset_desc_ring(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int i, rx_queue_idx;
 unsigned long flags = 0;

 for (rx_queue_idx = 0; rx_queue_idx < MAX_RX_QUEUE; rx_queue_idx++) {
  if (priv->rx_ring[rx_queue_idx]) {
   struct rx_desc *entry = ((void*)0);

   for (i = 0; i < priv->rxringcount; i++) {
    entry = &priv->rx_ring[rx_queue_idx][i];
    entry->OWN = 1;
   }
   priv->rx_idx[rx_queue_idx] = 0;
  }
 }

 spin_lock_irqsave(&priv->irq_th_lock, flags);
 for (i = 0; i < MAX_TX_QUEUE_COUNT; i++) {
  if (priv->tx_ring[i].desc) {
   struct rtl8192_tx_ring *ring = &priv->tx_ring[i];

   while (skb_queue_len(&ring->queue)) {
    struct tx_desc *entry = &ring->desc[ring->idx];
    struct sk_buff *skb =
       __skb_dequeue(&ring->queue);

    pci_unmap_single(priv->pdev,
       entry->TxBuffAddr,
       skb->len, PCI_DMA_TODEVICE);
    kfree_skb(skb);
    ring->idx = (ring->idx + 1) % ring->entries;
   }
   ring->idx = 0;
  }
 }
 spin_unlock_irqrestore(&priv->irq_th_lock, flags);
}
