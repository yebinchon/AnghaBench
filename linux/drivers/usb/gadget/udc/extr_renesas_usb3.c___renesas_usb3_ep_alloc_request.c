
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct renesas_usb3_request {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct renesas_usb3_request* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *__renesas_usb3_ep_alloc_request(gfp_t gfp_flags)
{
 struct renesas_usb3_request *usb3_req;

 usb3_req = kzalloc(sizeof(struct renesas_usb3_request), gfp_flags);
 if (!usb3_req)
  return ((void*)0);

 INIT_LIST_HEAD(&usb3_req->queue);

 return &usb3_req->req;
}
