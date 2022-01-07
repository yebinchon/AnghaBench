
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_request {int start_trb; int end_trb; struct cdns3_endpoint* priv_ep; } ;
struct cdns3_endpoint {int dequeue; } ;


 int cdns3_ep_inc_deq (struct cdns3_endpoint*) ;

void cdns3_move_deq_to_next_trb(struct cdns3_request *priv_req)
{
 struct cdns3_endpoint *priv_ep = priv_req->priv_ep;
 int current_trb = priv_req->start_trb;

 while (current_trb != priv_req->end_trb) {
  cdns3_ep_inc_deq(priv_ep);
  current_trb = priv_ep->dequeue;
 }

 cdns3_ep_inc_deq(priv_ep);
}
