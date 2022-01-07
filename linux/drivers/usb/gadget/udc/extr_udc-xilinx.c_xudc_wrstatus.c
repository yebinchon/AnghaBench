
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int) ;struct xusb_ep* ep; } ;
struct xusb_ep {scalar_t__ offset; } ;


 scalar_t__ XUSB_BUFFREADY_OFFSET ;
 scalar_t__ XUSB_EP_BUF0COUNT_OFFSET ;
 int XUSB_EP_CFG_DATA_TOGGLE_MASK ;
 size_t XUSB_EP_NUMBER_ZERO ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int) ;
 int stub3 (scalar_t__,scalar_t__,int) ;
 int stub4 (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void xudc_wrstatus(struct xusb_udc *udc)
{
 struct xusb_ep *ep0 = &udc->ep[XUSB_EP_NUMBER_ZERO];
 u32 epcfgreg;

 epcfgreg = udc->read_fn(udc->addr + ep0->offset)|
    XUSB_EP_CFG_DATA_TOGGLE_MASK;
 udc->write_fn(udc->addr, ep0->offset, epcfgreg);
 udc->write_fn(udc->addr, ep0->offset + XUSB_EP_BUF0COUNT_OFFSET, 0);
 udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET, 1);
}
