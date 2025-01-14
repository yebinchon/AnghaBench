
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; struct net_device* dev; } ;
struct rx_desc {int OWN; int EOR; int Length; int BufferAddress; } ;
struct r8192_priv {int rxringcount; int rxbuffersize; int pdev; struct sk_buff*** rx_buf; struct rx_desc** rx_ring; scalar_t__* rx_idx; int * rx_ring_dma; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 short ENOMEM ;
 int MAX_RX_QUEUE ;
 int PCI_DMA_FROMDEVICE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 struct rx_desc* pci_zalloc_consistent (int ,int,int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int skb_tail_pointer_rsl (struct sk_buff*) ;

__attribute__((used)) static short _rtl92e_alloc_rx_ring(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rx_desc *entry = ((void*)0);
 int i, rx_queue_idx;

 for (rx_queue_idx = 0; rx_queue_idx < MAX_RX_QUEUE; rx_queue_idx++) {
  priv->rx_ring[rx_queue_idx] = pci_zalloc_consistent(priv->pdev,
           sizeof(*priv->rx_ring[rx_queue_idx]) * priv->rxringcount,
           &priv->rx_ring_dma[rx_queue_idx]);
  if (!priv->rx_ring[rx_queue_idx] ||
      (unsigned long)priv->rx_ring[rx_queue_idx] & 0xFF) {
   netdev_warn(dev, "Cannot allocate RX ring\n");
   return -ENOMEM;
  }

  priv->rx_idx[rx_queue_idx] = 0;

  for (i = 0; i < priv->rxringcount; i++) {
   struct sk_buff *skb = dev_alloc_skb(priv->rxbuffersize);
   dma_addr_t *mapping;

   entry = &priv->rx_ring[rx_queue_idx][i];
   if (!skb)
    return 0;
   skb->dev = dev;
   priv->rx_buf[rx_queue_idx][i] = skb;
   mapping = (dma_addr_t *)skb->cb;
   *mapping = pci_map_single(priv->pdev,
        skb_tail_pointer_rsl(skb),
        priv->rxbuffersize,
        PCI_DMA_FROMDEVICE);
   if (pci_dma_mapping_error(priv->pdev, *mapping)) {
    dev_kfree_skb_any(skb);
    return -1;
   }
   entry->BufferAddress = *mapping;

   entry->Length = priv->rxbuffersize;
   entry->OWN = 1;
  }

  if (entry)
   entry->EOR = 1;
 }
 return 0;
}
