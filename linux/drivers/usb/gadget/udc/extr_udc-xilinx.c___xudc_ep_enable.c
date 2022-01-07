
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int) ;int dev; } ;
struct TYPE_2__ {int maxpacket; struct usb_endpoint_descriptor const* desc; } ;
struct xusb_ep {int is_in; int epnumber; int is_iso; int buffer0ready; int buffer1ready; int rambase; scalar_t__ offset; scalar_t__ curbufnum; TYPE_1__ ep_usb; struct usb_endpoint_descriptor const* desc; struct xusb_udc* udc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; int wMaxPacketSize; } ;


 int EINVAL ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_XFERTYPE_MASK ;




 scalar_t__ XUSB_BUFFREADY_OFFSET ;
 int XUSB_EP_CFG_VALID_MASK ;
 scalar_t__ XUSB_IER_OFFSET ;
 int XUSB_STATUS_EP_BUFF2_SHIFT ;
 int XUSB_STATUS_INTR_BUFF_COMP_SHIFT_MASK ;
 int dev_dbg (int ,char*,...) ;
 int is_power_of_2 (int) ;
 int le16_to_cpu (int ) ;
 int* rambase ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__,scalar_t__,int) ;
 int stub5 (scalar_t__,scalar_t__,int) ;
 int stub6 (scalar_t__,scalar_t__,int) ;
 int xudc_epconfig (struct xusb_ep*,struct xusb_udc*) ;

__attribute__((used)) static int __xudc_ep_enable(struct xusb_ep *ep,
       const struct usb_endpoint_descriptor *desc)
{
 struct xusb_udc *udc = ep->udc;
 u32 tmp;
 u32 epcfg;
 u32 ier;
 u16 maxpacket;

 ep->is_in = ((desc->bEndpointAddress & USB_DIR_IN) != 0);

 ep->epnumber = (desc->bEndpointAddress & 0x0f);
 ep->desc = desc;
 ep->ep_usb.desc = desc;
 tmp = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
 ep->ep_usb.maxpacket = maxpacket = le16_to_cpu(desc->wMaxPacketSize);

 switch (tmp) {
 case 130:
  dev_dbg(udc->dev, "only one control endpoint\n");

  ep->is_iso = 0;
  return -EINVAL;
 case 129:

  ep->is_iso = 0;
  if (maxpacket > 64) {
   dev_dbg(udc->dev, "bogus maxpacket %d\n", maxpacket);
   return -EINVAL;
  }
  break;
 case 131:

  ep->is_iso = 0;
  if (!(is_power_of_2(maxpacket) && maxpacket >= 8 &&
    maxpacket <= 512)) {
   dev_dbg(udc->dev, "bogus maxpacket %d\n", maxpacket);
   return -EINVAL;
  }
  break;
 case 128:

  ep->is_iso = 1;
  break;
 }

 ep->buffer0ready = 0;
 ep->buffer1ready = 0;
 ep->curbufnum = 0;
 ep->rambase = rambase[ep->epnumber];
 xudc_epconfig(ep, udc);

 dev_dbg(udc->dev, "Enable Endpoint %d max pkt is %d\n",
  ep->epnumber, maxpacket);


 epcfg = udc->read_fn(udc->addr + ep->offset);
 epcfg |= XUSB_EP_CFG_VALID_MASK;
 udc->write_fn(udc->addr, ep->offset, epcfg);
 if (ep->epnumber)
  ep->rambase <<= 2;


 ier = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
 ier |= (XUSB_STATUS_INTR_BUFF_COMP_SHIFT_MASK << ep->epnumber);
 udc->write_fn(udc->addr, XUSB_IER_OFFSET, ier);


 if (ep->epnumber && !ep->is_in) {
  udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
         1 << ep->epnumber);
  ep->buffer0ready = 1;
  udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
        (1 << (ep->epnumber +
         XUSB_STATUS_EP_BUFF2_SHIFT)));
  ep->buffer1ready = 1;
 }

 return 0;
}
