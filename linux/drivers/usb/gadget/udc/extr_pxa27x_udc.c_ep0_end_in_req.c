
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {int dev; } ;
struct pxa27x_request {int dummy; } ;


 int IN_STATUS_STAGE ;
 int ep_end_in_req (struct pxa_ep*,struct pxa27x_request*,unsigned long*) ;
 int set_ep0state (int ,int ) ;

__attribute__((used)) static void ep0_end_in_req(struct pxa_ep *ep, struct pxa27x_request *req,
 unsigned long *pflags)
{
 set_ep0state(ep->dev, IN_STATUS_STAGE);
 ep_end_in_req(ep, req, pflags);
}
