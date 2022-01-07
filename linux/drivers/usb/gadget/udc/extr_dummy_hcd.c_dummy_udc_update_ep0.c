
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ speed; } ;
struct dummy {TYPE_3__* ep; TYPE_1__ gadget; } ;
struct TYPE_5__ {int maxpacket; } ;
struct TYPE_6__ {TYPE_2__ ep; } ;


 scalar_t__ USB_SPEED_SUPER ;

__attribute__((used)) static void dummy_udc_update_ep0(struct dummy *dum)
{
 if (dum->gadget.speed == USB_SPEED_SUPER)
  dum->ep[0].ep.maxpacket = 9;
 else
  dum->ep[0].ep.maxpacket = 64;
}
