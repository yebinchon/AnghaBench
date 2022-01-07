
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct musb {TYPE_1__* endpoints; } ;
struct TYPE_2__ {int ep_in; } ;


 int musb_g_giveback (int *,struct usb_request*,int ) ;

__attribute__((used)) static void musb_g_ep0_giveback(struct musb *musb, struct usb_request *req)
{
 musb_g_giveback(&musb->endpoints[0].ep_in, req, 0);
}
