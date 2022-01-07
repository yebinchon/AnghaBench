
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ actual; } ;
struct iudma_ch {int is_tx; } ;
struct bcm63xx_udc {int gadget; struct usb_request* ep0_request; struct iudma_ch* iudma; } ;
struct bcm63xx_req {scalar_t__ offset; } ;


 int BUG_ON (struct usb_request*) ;
 int iudma_write (struct bcm63xx_udc*,struct iudma_ch*,struct bcm63xx_req*) ;
 struct bcm63xx_req* our_req (struct usb_request*) ;
 int usb_gadget_map_request (int *,struct usb_request*,int ) ;

__attribute__((used)) static void bcm63xx_ep0_map_write(struct bcm63xx_udc *udc, int ch_idx,
 struct usb_request *req)
{
 struct bcm63xx_req *breq = our_req(req);
 struct iudma_ch *iudma = &udc->iudma[ch_idx];

 BUG_ON(udc->ep0_request);
 udc->ep0_request = req;

 req->actual = 0;
 breq->offset = 0;
 usb_gadget_map_request(&udc->gadget, req, iudma->is_tx);
 iudma_write(udc, iudma, breq);
}
