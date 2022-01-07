
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int buf; } ;
struct cdns3_request {int flags; int list; TYPE_1__ request; } ;
struct cdns3_endpoint {int wa2_counter; int endpoint; int wa2_descmiss_req_list; } ;


 int REQUEST_INTERNAL_CH ;
 int cdns3_gadget_ep_free_request (int *,TYPE_1__*) ;
 struct cdns3_request* cdns3_next_priv_request (int *) ;
 int kfree (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int trace_cdns3_wa2 (struct cdns3_endpoint*,char*) ;

__attribute__((used)) static void cdns3_wa2_remove_old_request(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_request *priv_req;

 while (!list_empty(&priv_ep->wa2_descmiss_req_list)) {
  u8 chain;

  priv_req = cdns3_next_priv_request(&priv_ep->wa2_descmiss_req_list);
  chain = !!(priv_req->flags & REQUEST_INTERNAL_CH);

  trace_cdns3_wa2(priv_ep, "removes eldest request");

  kfree(priv_req->request.buf);
  cdns3_gadget_ep_free_request(&priv_ep->endpoint,
          &priv_req->request);
  list_del_init(&priv_req->list);
  --priv_ep->wa2_counter;

  if (!chain)
   break;
 }
}
