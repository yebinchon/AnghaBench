
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 struct usb_request* __renesas_usb3_ep_alloc_request (int ) ;

__attribute__((used)) static struct usb_request *renesas_usb3_ep_alloc_request(struct usb_ep *_ep,
        gfp_t gfp_flags)
{
 return __renesas_usb3_ep_alloc_request(gfp_flags);
}
