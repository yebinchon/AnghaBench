
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qe_udc {struct qe_ep* eps; } ;
struct qe_ep {int * tx_req; } ;


 int ECONNRESET ;
 int nuke (struct qe_ep*,int ) ;

__attribute__((used)) static int udc_reset_ep_queue(struct qe_udc *udc, u8 pipe)
{
 struct qe_ep *ep = &udc->eps[pipe];

 nuke(ep, -ECONNRESET);
 ep->tx_req = ((void*)0);
 return 0;
}
