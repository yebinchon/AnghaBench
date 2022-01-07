
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nbu2ss_udc {int ep0state; } ;
struct TYPE_4__ {int length; int zero; } ;
struct nbu2ss_req {int dma_flag; int zero; TYPE_2__ req; scalar_t__ div_len; } ;
struct TYPE_3__ {int maxpacket; } ;
struct nbu2ss_ep {scalar_t__ epnum; scalar_t__ direct; TYPE_1__ ep; } ;


 int EINVAL ;



 int EP0_send_NULL (struct nbu2ss_udc*,int) ;
 scalar_t__ USB_DIR_OUT ;
 int _nbu2ss_ep0_in_transfer (struct nbu2ss_udc*,struct nbu2ss_req*) ;
 int _nbu2ss_ep0_out_transfer (struct nbu2ss_udc*,struct nbu2ss_req*) ;
 int _nbu2ss_epn_in_transfer (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ;
 int _nbu2ss_epn_out_transfer (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ;

__attribute__((used)) static int _nbu2ss_start_transfer(struct nbu2ss_udc *udc,
      struct nbu2ss_ep *ep,
      struct nbu2ss_req *req,
      bool bflag)
{
 int nret = -EINVAL;

 req->dma_flag = 0;
 req->div_len = 0;

 if (req->req.length == 0) {
  req->zero = 0;
 } else {
  if ((req->req.length % ep->ep.maxpacket) == 0)
   req->zero = req->req.zero;
  else
   req->zero = 0;
 }

 if (ep->epnum == 0) {

  switch (udc->ep0state) {
  case 130:
   nret = _nbu2ss_ep0_in_transfer(udc, req);
   break;

  case 128:
   nret = _nbu2ss_ep0_out_transfer(udc, req);
   break;

  case 129:
   nret = EP0_send_NULL(udc, 1);
   break;

  default:
   break;
  }

 } else {

  if (ep->direct == USB_DIR_OUT) {

   if (!bflag)
    nret = _nbu2ss_epn_out_transfer(udc, ep, req);
  } else {

   nret = _nbu2ss_epn_in_transfer(udc, ep, req);
  }
 }

 return nret;
}
