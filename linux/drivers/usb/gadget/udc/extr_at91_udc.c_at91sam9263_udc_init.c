
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_udc {struct at91_ep* ep; } ;
struct at91_ep {int maxpacket; } ;


 int NUM_ENDPOINTS ;

__attribute__((used)) static int at91sam9263_udc_init(struct at91_udc *udc)
{
 struct at91_ep *ep;
 int i;

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  ep = &udc->ep[i];

  switch (i) {
  case 0:
  case 1:
  case 2:
  case 3:
   ep->maxpacket = 64;
   break;
  case 4:
  case 5:
   ep->maxpacket = 256;
   break;
  }
 }

 return 0;
}
