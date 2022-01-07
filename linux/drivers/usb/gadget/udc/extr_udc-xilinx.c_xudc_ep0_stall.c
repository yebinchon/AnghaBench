
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int ) ;int (* read_fn ) (scalar_t__) ;struct xusb_ep* ep; } ;
struct xusb_ep {scalar_t__ offset; } ;


 int XUSB_EP_CFG_STALL_MASK ;
 size_t XUSB_EP_NUMBER_ZERO ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void xudc_ep0_stall(struct xusb_udc *udc)
{
 u32 epcfgreg;
 struct xusb_ep *ep0 = &udc->ep[XUSB_EP_NUMBER_ZERO];

 epcfgreg = udc->read_fn(udc->addr + ep0->offset);
 epcfgreg |= XUSB_EP_CFG_STALL_MASK;
 udc->write_fn(udc->addr, ep0->offset, epcfgreg);
}
