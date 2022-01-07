
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ep {unsigned int maxpacket; int name; int comp_desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; int bEndpointAddress; } ;
struct dummy_hcd {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dummy_ep {int stream_en; scalar_t__ wedged; scalar_t__ halted; struct usb_endpoint_descriptor const* desc; TYPE_1__ ep; } ;
struct TYPE_4__ {int speed; } ;
struct dummy {TYPE_2__ gadget; int driver; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 scalar_t__ USB_DT_ENDPOINT ;






 int dev_dbg (int ,char*,int ,int,char*,int ,unsigned int,char*) ;
 int dev_err (int ,char*,int ) ;
 int ep0name ;
 struct dummy* ep_to_dummy (struct dummy_ep*) ;
 struct dummy_hcd* gadget_to_dummy_hcd (TYPE_2__*) ;
 int is_enabled (struct dummy_hcd*) ;
 int strstr (int ,char*) ;
 int udc_dev (struct dummy*) ;
 unsigned int usb_endpoint_maxp (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor const*) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;
 int usb_ep_type_string (int) ;
 scalar_t__ usb_ss_max_streams (int ) ;

__attribute__((used)) static int dummy_enable(struct usb_ep *_ep,
  const struct usb_endpoint_descriptor *desc)
{
 struct dummy *dum;
 struct dummy_hcd *dum_hcd;
 struct dummy_ep *ep;
 unsigned max;
 int retval;

 ep = usb_ep_to_dummy_ep(_ep);
 if (!_ep || !desc || ep->desc || _ep->name == ep0name
   || desc->bDescriptorType != USB_DT_ENDPOINT)
  return -EINVAL;
 dum = ep_to_dummy(ep);
 if (!dum->driver)
  return -ESHUTDOWN;

 dum_hcd = gadget_to_dummy_hcd(&dum->gadget);
 if (!is_enabled(dum_hcd))
  return -ESHUTDOWN;






 max = usb_endpoint_maxp(desc);
 retval = -EINVAL;
 switch (usb_endpoint_type(desc)) {
 case 133:
  if (strstr(ep->ep.name, "-iso")
    || strstr(ep->ep.name, "-int")) {
   goto done;
  }
  switch (dum->gadget.speed) {
  case 128:
   if (max == 1024)
    break;
   goto done;
  case 129:
   if (max == 512)
    break;
   goto done;
  case 130:
   if (max == 8 || max == 16 || max == 32 || max == 64)

    break;

  default:
   goto done;
  }
  break;
 case 132:
  if (strstr(ep->ep.name, "-iso"))
   goto done;

  switch (dum->gadget.speed) {
  case 128:
  case 129:
   if (max <= 1024)
    break;


  case 130:
   if (max <= 64)
    break;


  default:
   if (max <= 8)
    break;
   goto done;
  }
  break;
 case 131:
  if (strstr(ep->ep.name, "-bulk")
    || strstr(ep->ep.name, "-int"))
   goto done;

  switch (dum->gadget.speed) {
  case 128:
  case 129:
   if (max <= 1024)
    break;


  case 130:
   if (max <= 1023)
    break;

  default:
   goto done;
  }
  break;
 default:

  goto done;
 }

 _ep->maxpacket = max;
 if (usb_ss_max_streams(_ep->comp_desc)) {
  if (!usb_endpoint_xfer_bulk(desc)) {
   dev_err(udc_dev(dum), "Can't enable stream support on "
     "non-bulk ep %s\n", _ep->name);
   return -EINVAL;
  }
  ep->stream_en = 1;
 }
 ep->desc = desc;

 dev_dbg(udc_dev(dum), "enabled %s (ep%d%s-%s) maxpacket %d stream %s\n",
  _ep->name,
  desc->bEndpointAddress & 0x0f,
  (desc->bEndpointAddress & USB_DIR_IN) ? "in" : "out",
  usb_ep_type_string(usb_endpoint_type(desc)),
  max, ep->stream_en ? "enabled" : "disabled");




 ep->halted = ep->wedged = 0;
 retval = 0;
done:
 return retval;
}
