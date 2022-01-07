
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct usb_ctrlrequest {scalar_t__ bRequestType; int wIndex; int wValue; } ;
struct dwc3_ep {int flags; } ;
struct TYPE_5__ {int length; int complete; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ request; struct dwc3_ep* dep; } ;
struct TYPE_4__ {int is_selfpowered; } ;
struct dwc3 {TYPE_3__ ep0_usb_req; scalar_t__ setup_buf; struct dwc3_ep** eps; int regs; int speed; TYPE_1__ gadget; } ;
typedef int __le16 ;


 int DWC3_DCTL ;
 scalar_t__ DWC3_DCTL_INITU1ENA ;
 scalar_t__ DWC3_DCTL_INITU2ENA ;
 int DWC3_DSTS_SUPERSPEED ;
 int DWC3_DSTS_SUPERSPEED_PLUS ;
 int DWC3_EP_STALL ;
 int EINVAL ;
 int USB_DEV_STAT_U1_ENABLED ;
 int USB_DEV_STAT_U2_ENABLED ;
 int USB_ENDPOINT_HALT ;



 scalar_t__ USB_RECIP_MASK ;
 int __dwc3_gadget_ep0_queue (struct dwc3_ep*,TYPE_3__*) ;
 int cpu_to_le16 (int) ;
 int dwc3_ep0_status_cmpl ;
 scalar_t__ dwc3_readl (int ,int ) ;
 struct dwc3_ep* dwc3_wIndex_to_dep (struct dwc3*,int ) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int dwc3_ep0_handle_status(struct dwc3 *dwc,
  struct usb_ctrlrequest *ctrl)
{
 struct dwc3_ep *dep;
 u32 recip;
 u32 value;
 u32 reg;
 u16 usb_status = 0;
 __le16 *response_pkt;


 value = le16_to_cpu(ctrl->wValue);
 if (value != 0)
  return -EINVAL;

 recip = ctrl->bRequestType & USB_RECIP_MASK;
 switch (recip) {
 case 130:



  usb_status |= dwc->gadget.is_selfpowered;

  if ((dwc->speed == DWC3_DSTS_SUPERSPEED) ||
      (dwc->speed == DWC3_DSTS_SUPERSPEED_PLUS)) {
   reg = dwc3_readl(dwc->regs, DWC3_DCTL);
   if (reg & DWC3_DCTL_INITU1ENA)
    usb_status |= 1 << USB_DEV_STAT_U1_ENABLED;
   if (reg & DWC3_DCTL_INITU2ENA)
    usb_status |= 1 << USB_DEV_STAT_U2_ENABLED;
  }

  break;

 case 128:




  break;

 case 129:
  dep = dwc3_wIndex_to_dep(dwc, ctrl->wIndex);
  if (!dep)
   return -EINVAL;

  if (dep->flags & DWC3_EP_STALL)
   usb_status = 1 << USB_ENDPOINT_HALT;
  break;
 default:
  return -EINVAL;
 }

 response_pkt = (__le16 *) dwc->setup_buf;
 *response_pkt = cpu_to_le16(usb_status);

 dep = dwc->eps[0];
 dwc->ep0_usb_req.dep = dep;
 dwc->ep0_usb_req.request.length = sizeof(*response_pkt);
 dwc->ep0_usb_req.request.buf = dwc->setup_buf;
 dwc->ep0_usb_req.request.complete = dwc3_ep0_status_cmpl;

 return __dwc3_gadget_ep0_queue(dep, &dwc->ep0_usb_req);
}
