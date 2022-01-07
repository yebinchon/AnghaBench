
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xusb_udc {int addr; int (* write_fn ) (int ,scalar_t__,int) ;} ;
struct TYPE_2__ {int maxpacket; } ;
struct xusb_ep {int is_in; int is_iso; int rambase; int buffer0count; int buffer1count; int epnumber; scalar_t__ buffer1ready; scalar_t__ buffer0ready; scalar_t__ offset; TYPE_1__ ep_usb; } ;


 scalar_t__ XUSB_BUFFREADY_OFFSET ;
 scalar_t__ XUSB_EP_BUF0COUNT_OFFSET ;
 scalar_t__ XUSB_EP_BUF1COUNT_OFFSET ;
 int XUSB_STATUS_EP_BUFF2_SHIFT ;
 int stub1 (int ,scalar_t__,int) ;
 int stub2 (int ,scalar_t__,int) ;
 int stub3 (int ,scalar_t__,int) ;
 int stub4 (int ,scalar_t__,int) ;
 int stub5 (int ,scalar_t__,int) ;

__attribute__((used)) static void xudc_epconfig(struct xusb_ep *ep, struct xusb_udc *udc)
{
 u32 epcfgreg;





 epcfgreg = ((ep->is_in << 29) | (ep->is_iso << 28) |
     (ep->ep_usb.maxpacket << 15) | (ep->rambase));
 udc->write_fn(udc->addr, ep->offset, epcfgreg);


 udc->write_fn(udc->addr, ep->offset + XUSB_EP_BUF0COUNT_OFFSET,
        ep->buffer0count);
 udc->write_fn(udc->addr, ep->offset + XUSB_EP_BUF1COUNT_OFFSET,
        ep->buffer1count);
 if (ep->buffer0ready)
  udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
         1 << ep->epnumber);
 if (ep->buffer1ready)
  udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
         1 << (ep->epnumber + XUSB_STATUS_EP_BUFF2_SHIFT));
}
