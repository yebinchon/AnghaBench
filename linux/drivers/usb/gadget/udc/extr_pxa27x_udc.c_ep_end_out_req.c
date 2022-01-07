
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {int dummy; } ;
struct pxa27x_request {int dummy; } ;


 int USB_DIR_IN ;
 int inc_ep_stats_reqs (struct pxa_ep*,int) ;
 int req_done (struct pxa_ep*,struct pxa27x_request*,int ,unsigned long*) ;

__attribute__((used)) static void ep_end_out_req(struct pxa_ep *ep, struct pxa27x_request *req,
 unsigned long *pflags)
{
 inc_ep_stats_reqs(ep, !USB_DIR_IN);
 req_done(ep, req, 0, pflags);
}
