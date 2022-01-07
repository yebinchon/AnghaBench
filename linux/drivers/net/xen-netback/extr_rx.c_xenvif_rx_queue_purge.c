
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* xenvif_rx_dequeue (struct xenvif_queue*) ;

__attribute__((used)) static void xenvif_rx_queue_purge(struct xenvif_queue *queue)
{
 struct sk_buff *skb;

 while ((skb = xenvif_rx_dequeue(queue)) != ((void*)0))
  kfree_skb(skb);
}
