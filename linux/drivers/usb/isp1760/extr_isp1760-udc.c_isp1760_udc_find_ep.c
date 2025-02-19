
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct isp1760_udc {struct isp1760_ep* ep; } ;
struct isp1760_ep {scalar_t__ addr; scalar_t__ desc; } ;


 unsigned int ARRAY_SIZE (struct isp1760_ep*) ;

__attribute__((used)) static struct isp1760_ep *isp1760_udc_find_ep(struct isp1760_udc *udc,
           u16 index)
{
 unsigned int i;

 if (index == 0)
  return &udc->ep[0];

 for (i = 1; i < ARRAY_SIZE(udc->ep); ++i) {
  if (udc->ep[i].addr == index)
   return udc->ep[i].desc ? &udc->ep[i] : ((void*)0);
 }

 return ((void*)0);
}
