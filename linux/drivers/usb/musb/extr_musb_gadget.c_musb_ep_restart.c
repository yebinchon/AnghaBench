
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_request {scalar_t__ tx; int epnum; } ;
struct musb {int mregs; } ;


 int musb_ep_select (int ,int ) ;
 int rxstate (struct musb*,struct musb_request*) ;
 int trace_musb_req_start (struct musb_request*) ;
 int txstate (struct musb*,struct musb_request*) ;

void musb_ep_restart(struct musb *musb, struct musb_request *req)
{
 trace_musb_req_start(req);
 musb_ep_select(musb->mregs, req->epnum);
 if (req->tx)
  txstate(musb, req);
 else
  rxstate(musb, req);
}
