
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xusb_udc {struct xusb_ep* ep; } ;
struct xusb_ep {int dummy; } ;


 int ESHUTDOWN ;
 int XUSB_MAX_ENDPOINTS ;
 int xudc_nuke (struct xusb_ep*,int ) ;

__attribute__((used)) static void xudc_stop_activity(struct xusb_udc *udc)
{
 int i;
 struct xusb_ep *ep;

 for (i = 0; i < XUSB_MAX_ENDPOINTS; i++) {
  ep = &udc->ep[i];
  xudc_nuke(ep, -ESHUTDOWN);
 }
}
