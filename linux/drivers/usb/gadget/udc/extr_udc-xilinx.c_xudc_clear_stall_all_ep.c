
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int ) ;int (* read_fn ) (scalar_t__) ;struct xusb_ep* ep; } ;
struct xusb_ep {scalar_t__ offset; scalar_t__ epnumber; } ;


 int XUSB_EP_CFG_DATA_TOGGLE_MASK ;
 int XUSB_EP_CFG_STALL_MASK ;
 int XUSB_MAX_ENDPOINTS ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int ) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void xudc_clear_stall_all_ep(struct xusb_udc *udc)
{
 struct xusb_ep *ep;
 u32 epcfgreg;
 int i;

 for (i = 0; i < XUSB_MAX_ENDPOINTS; i++) {
  ep = &udc->ep[i];
  epcfgreg = udc->read_fn(udc->addr + ep->offset);
  epcfgreg &= ~XUSB_EP_CFG_STALL_MASK;
  udc->write_fn(udc->addr, ep->offset, epcfgreg);
  if (ep->epnumber) {

   epcfgreg = udc->read_fn(udc->addr + ep->offset);
   epcfgreg &= ~XUSB_EP_CFG_DATA_TOGGLE_MASK;
   udc->write_fn(udc->addr, ep->offset, epcfgreg);
  }
 }
}
