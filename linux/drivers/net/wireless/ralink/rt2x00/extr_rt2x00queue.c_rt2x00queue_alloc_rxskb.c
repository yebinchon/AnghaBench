
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_frame_desc {int flags; int skb_dma; } ;
struct sk_buff {int len; int data; } ;
struct rt2x00_dev {int dev; } ;
struct queue_entry {struct data_queue* queue; } ;
struct data_queue {unsigned int data_size; unsigned int desc_size; unsigned int winfo_size; struct rt2x00_dev* rt2x00dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int REQUIRE_DMA ;
 int SKBDESC_DMA_MAPPED_RX ;
 struct sk_buff* __dev_alloc_skb (unsigned int,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 struct skb_frame_desc* get_skb_frame_desc (struct sk_buff*) ;
 int memset (struct skb_frame_desc*,int ,int) ;
 scalar_t__ rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_has_cap_hw_crypto (struct rt2x00_dev*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

struct sk_buff *rt2x00queue_alloc_rxskb(struct queue_entry *entry, gfp_t gfp)
{
 struct data_queue *queue = entry->queue;
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 struct sk_buff *skb;
 struct skb_frame_desc *skbdesc;
 unsigned int frame_size;
 unsigned int head_size = 0;
 unsigned int tail_size = 0;





 frame_size = queue->data_size + queue->desc_size + queue->winfo_size;






 head_size = 4;






 if (rt2x00_has_cap_hw_crypto(rt2x00dev)) {
  head_size += 8;
  tail_size += 8;
 }




 skb = __dev_alloc_skb(frame_size + head_size + tail_size, gfp);
 if (!skb)
  return ((void*)0);





 skb_reserve(skb, head_size);
 skb_put(skb, frame_size);




 skbdesc = get_skb_frame_desc(skb);
 memset(skbdesc, 0, sizeof(*skbdesc));

 if (rt2x00_has_cap_flag(rt2x00dev, REQUIRE_DMA)) {
  dma_addr_t skb_dma;

  skb_dma = dma_map_single(rt2x00dev->dev, skb->data, skb->len,
      DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(rt2x00dev->dev, skb_dma))) {
   dev_kfree_skb_any(skb);
   return ((void*)0);
  }

  skbdesc->skb_dma = skb_dma;
  skbdesc->flags |= SKBDESC_DMA_MAPPED_RX;
 }

 return skb;
}
