
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dummy_ep {TYPE_1__* desc; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct dummy {struct dummy_ep* ep; int ints_enabled; int hs_hcd; int ss_hcd; TYPE_2__ gadget; } ;
struct TYPE_3__ {int bEndpointAddress; } ;


 int DUMMY_ENDPOINTS ;
 int USB_DIR_IN ;
 scalar_t__ USB_SPEED_SUPER ;
 int is_active (int ) ;

__attribute__((used)) static struct dummy_ep *find_endpoint(struct dummy *dum, u8 address)
{
 int i;

 if (!is_active((dum->gadget.speed == USB_SPEED_SUPER ?
   dum->ss_hcd : dum->hs_hcd)))
  return ((void*)0);
 if (!dum->ints_enabled)
  return ((void*)0);
 if ((address & ~USB_DIR_IN) == 0)
  return &dum->ep[0];
 for (i = 1; i < DUMMY_ENDPOINTS; i++) {
  struct dummy_ep *ep = &dum->ep[i];

  if (!ep->desc)
   continue;
  if (ep->desc->bEndpointAddress == address)
   return ep;
 }
 return ((void*)0);
}
