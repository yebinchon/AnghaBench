
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req_cons; TYPE_1__* sring; } ;
struct xenvif_queue {TYPE_2__ rx; int rx_queue; } ;
struct sk_buff {scalar_t__ sw_hash; int len; } ;
struct TYPE_3__ {scalar_t__ req_prod; scalar_t__ req_event; } ;
typedef scalar_t__ RING_IDX ;


 int DIV_ROUND_UP (int ,int ) ;
 int XEN_PAGE_SIZE ;
 int mb () ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static bool xenvif_rx_ring_slots_available(struct xenvif_queue *queue)
{
 RING_IDX prod, cons;
 struct sk_buff *skb;
 int needed;

 skb = skb_peek(&queue->rx_queue);
 if (!skb)
  return 0;

 needed = DIV_ROUND_UP(skb->len, XEN_PAGE_SIZE);
 if (skb_is_gso(skb))
  needed++;
 if (skb->sw_hash)
  needed++;

 do {
  prod = queue->rx.sring->req_prod;
  cons = queue->rx.req_cons;

  if (prod - cons >= needed)
   return 1;

  queue->rx.sring->req_event = prod + 1;




  mb();
 } while (queue->rx.sring->req_prod != prod);

 return 0;
}
