
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int length; int * complete; int buf; } ;
struct TYPE_2__ {struct usb_request req; } ;
struct bcm63xx_udc {int ep0_ctrl_buf; TYPE_1__ ep0_ctrl_req; } ;


 int bcm63xx_ep0_map_write (struct bcm63xx_udc*,int,struct usb_request*) ;

__attribute__((used)) static void bcm63xx_ep0_internal_request(struct bcm63xx_udc *udc, int ch_idx,
 int length)
{
 struct usb_request *req = &udc->ep0_ctrl_req.req;

 req->buf = udc->ep0_ctrl_buf;
 req->length = length;
 req->complete = ((void*)0);

 bcm63xx_ep0_map_write(udc, ch_idx, req);
}
