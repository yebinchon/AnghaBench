
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct bcm63xx_req {struct usb_request req; } ;
typedef int gfp_t ;


 struct bcm63xx_req* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *bcm63xx_udc_alloc_request(struct usb_ep *ep,
 gfp_t mem_flags)
{
 struct bcm63xx_req *breq;

 breq = kzalloc(sizeof(*breq), mem_flags);
 if (!breq)
  return ((void*)0);
 return &breq->req;
}
