
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vudc {struct vep* ep; } ;
struct vep {TYPE_1__* desc; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int USB_DIR_IN ;
 int VIRTUAL_ENDPOINTS ;

struct vep *vudc_find_endpoint(struct vudc *udc, u8 address)
{
 int i;

 if ((address & ~USB_DIR_IN) == 0)
  return &udc->ep[0];

 for (i = 1; i < VIRTUAL_ENDPOINTS; i++) {
  struct vep *ep = &udc->ep[i];

  if (!ep->desc)
   continue;
  if (ep->desc->bEndpointAddress == address)
   return ep;
 }
 return ((void*)0);
}
