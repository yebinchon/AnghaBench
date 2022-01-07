
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int __renesas_usb3_ep_free_request (struct usb_request*) ;

__attribute__((used)) static void renesas_usb3_ep_free_request(struct usb_ep *_ep,
      struct usb_request *_req)
{
 __renesas_usb3_ep_free_request(_req);
}
