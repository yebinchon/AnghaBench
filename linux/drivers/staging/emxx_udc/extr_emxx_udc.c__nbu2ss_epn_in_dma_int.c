
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_request {int actual; int length; } ;
struct nbu2ss_udc {int dummy; } ;
struct nbu2ss_req {int dma_flag; scalar_t__ div_len; struct usb_request req; } ;
struct TYPE_2__ {int maxpacket; } ;
struct nbu2ss_ep {int epnum; TYPE_1__ ep; } ;


 int USB_DIR_IN ;
 int _nbu2ss_dma_unmap_single (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*,int ) ;
 int _nbu2ss_ep_in_end (struct nbu2ss_udc*,int ,int ,int ) ;
 int _nbu2ss_epn_in_int (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ;
 int _nbu2ss_epn_in_transfer (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ;

__attribute__((used)) static inline void _nbu2ss_epn_in_dma_int(struct nbu2ss_udc *udc,
       struct nbu2ss_ep *ep,
       struct nbu2ss_req *req)
{
 u32 mpkt;
 u32 size;
 struct usb_request *preq;

 preq = &req->req;

 if (!req->dma_flag)
  return;

 preq->actual += req->div_len;
 req->div_len = 0;
 req->dma_flag = 0;





 if (preq->actual != preq->length) {
  _nbu2ss_epn_in_transfer(udc, ep, req);
 } else {
  mpkt = ep->ep.maxpacket;
  size = preq->actual % mpkt;
  if (size > 0) {
   if (((preq->actual & 0x03) == 0) && (size < mpkt))
    _nbu2ss_ep_in_end(udc, ep->epnum, 0, 0);
  } else {
   _nbu2ss_epn_in_int(udc, ep, req);
  }
 }
}
