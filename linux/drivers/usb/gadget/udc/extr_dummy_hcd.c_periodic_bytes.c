
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxpacket; } ;
struct dummy_ep {int desc; TYPE_1__ ep; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct dummy {TYPE_2__ gadget; } ;





 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 int usb_endpoint_maxp_mult (int ) ;
 int usb_endpoint_type (int ) ;

__attribute__((used)) static int periodic_bytes(struct dummy *dum, struct dummy_ep *ep)
{
 int limit = ep->ep.maxpacket;

 if (dum->gadget.speed == USB_SPEED_HIGH) {
  int tmp;


  tmp = usb_endpoint_maxp_mult(ep->desc);
  tmp *= 8 ;
  limit += limit * tmp;
 }
 if (dum->gadget.speed == USB_SPEED_SUPER) {
  switch (usb_endpoint_type(ep->desc)) {
  case 128:

   limit = 3 * 16 * 1024 * 8;
   break;
  case 129:

   limit = 3 * 1024 * 8;
   break;
  case 130:
  default:
   break;
  }
 }
 return limit;
}
