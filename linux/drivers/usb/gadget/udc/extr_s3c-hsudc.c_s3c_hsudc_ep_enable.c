
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_ep {scalar_t__ name; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; scalar_t__ bEndpointAddress; scalar_t__ bmAttributes; int wMaxPacketSize; } ;
struct TYPE_4__ {scalar_t__ maxpacket; struct usb_endpoint_descriptor const* desc; } ;
struct s3c_hsudc_ep {scalar_t__ bEndpointAddress; TYPE_2__ ep; scalar_t__ wedge; scalar_t__ stopped; struct s3c_hsudc* dev; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct s3c_hsudc {int lock; scalar_t__ regs; TYPE_1__ gadget; int driver; } ;


 int EINVAL ;
 int ERANGE ;
 int ESHUTDOWN ;
 scalar_t__ S3C_ECR ;
 int S3C_ECR_DUEN ;
 int S3C_ECR_IEMS ;
 scalar_t__ S3C_EIER ;
 scalar_t__ USB_DT_ENDPOINT ;
 scalar_t__ USB_ENDPOINT_XFER_BULK ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int __set_bit (int ,scalar_t__) ;
 scalar_t__ ep0name ;
 int ep_index (struct s3c_hsudc_ep*) ;
 scalar_t__ ep_maxpacket (struct s3c_hsudc_ep*) ;
 struct s3c_hsudc_ep* our_ep (struct usb_ep*) ;
 int s3c_hsudc_set_halt (struct usb_ep*,int ) ;
 int set_index (struct s3c_hsudc*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_endpoint_maxp (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor const*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c_hsudc_ep_enable(struct usb_ep *_ep,
    const struct usb_endpoint_descriptor *desc)
{
 struct s3c_hsudc_ep *hsep;
 struct s3c_hsudc *hsudc;
 unsigned long flags;
 u32 ecr = 0;

 hsep = our_ep(_ep);
 if (!_ep || !desc || _ep->name == ep0name
  || desc->bDescriptorType != USB_DT_ENDPOINT
  || hsep->bEndpointAddress != desc->bEndpointAddress
  || ep_maxpacket(hsep) < usb_endpoint_maxp(desc))
  return -EINVAL;

 if ((desc->bmAttributes == USB_ENDPOINT_XFER_BULK
  && usb_endpoint_maxp(desc) != ep_maxpacket(hsep))
  || !desc->wMaxPacketSize)
  return -ERANGE;

 hsudc = hsep->dev;
 if (!hsudc->driver || hsudc->gadget.speed == USB_SPEED_UNKNOWN)
  return -ESHUTDOWN;

 spin_lock_irqsave(&hsudc->lock, flags);

 set_index(hsudc, hsep->bEndpointAddress);
 ecr |= ((usb_endpoint_xfer_int(desc)) ? S3C_ECR_IEMS : S3C_ECR_DUEN);
 writel(ecr, hsudc->regs + S3C_ECR);

 hsep->stopped = hsep->wedge = 0;
 hsep->ep.desc = desc;
 hsep->ep.maxpacket = usb_endpoint_maxp(desc);

 s3c_hsudc_set_halt(_ep, 0);
 __set_bit(ep_index(hsep), hsudc->regs + S3C_EIER);

 spin_unlock_irqrestore(&hsudc->lock, flags);
 return 0;
}
