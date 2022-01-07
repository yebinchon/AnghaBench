
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {int rxringcount; int ** rx_ring; int * rx_ring_dma; int pdev; int rxbuffersize; struct sk_buff*** rx_buf; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int MAX_RX_QUEUE ;
 int PCI_DMA_FROMDEVICE ;
 int kfree_skb (struct sk_buff*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_free_rx_ring(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int i, rx_queue_idx;

 for (rx_queue_idx = 0; rx_queue_idx < MAX_RX_QUEUE;
      rx_queue_idx++) {
  for (i = 0; i < priv->rxringcount; i++) {
   struct sk_buff *skb = priv->rx_buf[rx_queue_idx][i];

   if (!skb)
    continue;

   pci_unmap_single(priv->pdev,
    *((dma_addr_t *)skb->cb),
    priv->rxbuffersize, PCI_DMA_FROMDEVICE);
   kfree_skb(skb);
  }

  pci_free_consistent(priv->pdev,
   sizeof(*priv->rx_ring[rx_queue_idx]) *
   priv->rxringcount,
   priv->rx_ring[rx_queue_idx],
   priv->rx_ring_dma[rx_queue_idx]);
  priv->rx_ring[rx_queue_idx] = ((void*)0);
 }
}
