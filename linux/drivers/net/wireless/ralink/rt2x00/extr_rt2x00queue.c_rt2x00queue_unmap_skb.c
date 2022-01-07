
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skb_frame_desc {int flags; int skb_dma; } ;
struct queue_entry {TYPE_3__* skb; TYPE_2__* queue; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {TYPE_1__* rt2x00dev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int SKBDESC_DMA_MAPPED_RX ;
 int SKBDESC_DMA_MAPPED_TX ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_3__*) ;

void rt2x00queue_unmap_skb(struct queue_entry *entry)
{
 struct device *dev = entry->queue->rt2x00dev->dev;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);

 if (skbdesc->flags & SKBDESC_DMA_MAPPED_RX) {
  dma_unmap_single(dev, skbdesc->skb_dma, entry->skb->len,
     DMA_FROM_DEVICE);
  skbdesc->flags &= ~SKBDESC_DMA_MAPPED_RX;
 } else if (skbdesc->flags & SKBDESC_DMA_MAPPED_TX) {
  dma_unmap_single(dev, skbdesc->skb_dma, entry->skb->len,
     DMA_TO_DEVICE);
  skbdesc->flags &= ~SKBDESC_DMA_MAPPED_TX;
 }
}
