
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {int inflight_packets; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;


 int SKBTX_DEV_ZEROCOPY ;
 int atomic_inc (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

void xenvif_skb_zerocopy_prepare(struct xenvif_queue *queue,
     struct sk_buff *skb)
{
 skb_shinfo(skb)->tx_flags |= SKBTX_DEV_ZEROCOPY;
 atomic_inc(&queue->inflight_packets);
}
