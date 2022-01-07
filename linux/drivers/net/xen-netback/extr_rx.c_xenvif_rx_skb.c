
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_cons; } ;
struct xenvif_queue {TYPE_1__ rx; int last_rx_time; } ;
struct xenvif_pkt_state {scalar_t__ remaining_len; scalar_t__ extra_count; scalar_t__ slot; } ;
struct xen_netif_rx_response {int dummy; } ;
struct xen_netif_rx_request {int dummy; } ;


 struct xen_netif_rx_request* RING_GET_REQUEST (TYPE_1__*,int ) ;
 struct xen_netif_rx_response* RING_GET_RESPONSE (TYPE_1__*,int ) ;
 int jiffies ;
 int xenvif_rx_complete (struct xenvif_queue*,struct xenvif_pkt_state*) ;
 int xenvif_rx_data_slot (struct xenvif_queue*,struct xenvif_pkt_state*,struct xen_netif_rx_request*,struct xen_netif_rx_response*) ;
 int xenvif_rx_extra_slot (struct xenvif_queue*,struct xenvif_pkt_state*,struct xen_netif_rx_request*,struct xen_netif_rx_response*) ;
 int xenvif_rx_next_skb (struct xenvif_queue*,struct xenvif_pkt_state*) ;

__attribute__((used)) static void xenvif_rx_skb(struct xenvif_queue *queue)
{
 struct xenvif_pkt_state pkt;

 xenvif_rx_next_skb(queue, &pkt);

 queue->last_rx_time = jiffies;

 do {
  struct xen_netif_rx_request *req;
  struct xen_netif_rx_response *rsp;

  req = RING_GET_REQUEST(&queue->rx, queue->rx.req_cons);
  rsp = RING_GET_RESPONSE(&queue->rx, queue->rx.req_cons);


  if (pkt.slot != 0 && pkt.extra_count != 0)
   xenvif_rx_extra_slot(queue, &pkt, req, rsp);
  else
   xenvif_rx_data_slot(queue, &pkt, req, rsp);

  queue->rx.req_cons++;
  pkt.slot++;
 } while (pkt.remaining_len > 0 || pkt.extra_count != 0);

 xenvif_rx_complete(queue, &pkt);
}
