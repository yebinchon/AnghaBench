
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int completed; } ;
struct TYPE_3__ {int req_cons; int rsp_prod_pvt; } ;
struct xenvif_queue {TYPE_2__ rx_copy; TYPE_1__ rx; } ;
struct xenvif_pkt_state {int skb; } ;


 int __skb_queue_tail (int ,int ) ;

__attribute__((used)) static void xenvif_rx_complete(struct xenvif_queue *queue,
          struct xenvif_pkt_state *pkt)
{

 queue->rx.rsp_prod_pvt = queue->rx.req_cons;

 __skb_queue_tail(queue->rx_copy.completed, pkt->skb);
}
