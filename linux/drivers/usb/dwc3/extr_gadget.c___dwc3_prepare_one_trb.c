
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int speed; } ;
struct usb_ep {int desc; } ;
struct dwc3_trb {int ctrl; int size; int bph; int bpl; } ;
struct dwc3_ep {scalar_t__ stream_capable; struct usb_ep endpoint; struct dwc3* dwc; } ;
struct dwc3 {int dev; struct usb_gadget gadget; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
typedef int dma_addr_t ;


 int DWC3_TRBCTL_CONTROL_SETUP ;
 int DWC3_TRBCTL_ISOCHRONOUS ;
 int DWC3_TRBCTL_ISOCHRONOUS_FIRST ;
 int DWC3_TRBCTL_NORMAL ;
 int DWC3_TRB_CTRL_CHN ;
 int DWC3_TRB_CTRL_CSP ;
 int DWC3_TRB_CTRL_HWO ;
 int DWC3_TRB_CTRL_IOC ;
 int DWC3_TRB_CTRL_ISP_IMI ;
 int DWC3_TRB_CTRL_SID_SOFN (unsigned int) ;
 int DWC3_TRB_SIZE_LENGTH (unsigned int) ;
 int DWC3_TRB_SIZE_PCM1 (unsigned int) ;




 int USB_SPEED_HIGH ;
 int dev_WARN (int ,char*,int) ;
 int dwc3_calc_trbs_left (struct dwc3_ep*) ;
 int dwc3_ep_inc_enq (struct dwc3_ep*) ;
 int lower_32_bits (int ) ;
 int trace_dwc3_prepare_trb (struct dwc3_ep*,struct dwc3_trb*) ;
 int upper_32_bits (int ) ;
 scalar_t__ usb_endpoint_dir_out (int ) ;
 unsigned int usb_endpoint_maxp (int ) ;
 int usb_endpoint_type (int ) ;
 scalar_t__ usb_endpoint_xfer_bulk (int ) ;

__attribute__((used)) static void __dwc3_prepare_one_trb(struct dwc3_ep *dep, struct dwc3_trb *trb,
  dma_addr_t dma, unsigned length, unsigned chain, unsigned node,
  unsigned stream_id, unsigned short_not_ok, unsigned no_interrupt)
{
 struct dwc3 *dwc = dep->dwc;
 struct usb_gadget *gadget = &dwc->gadget;
 enum usb_device_speed speed = gadget->speed;

 trb->size = DWC3_TRB_SIZE_LENGTH(length);
 trb->bpl = lower_32_bits(dma);
 trb->bph = upper_32_bits(dma);

 switch (usb_endpoint_type(dep->endpoint.desc)) {
 case 130:
  trb->ctrl = DWC3_TRBCTL_CONTROL_SETUP;
  break;

 case 128:
  if (!node) {
   trb->ctrl = DWC3_TRBCTL_ISOCHRONOUS_FIRST;
   if (speed == USB_SPEED_HIGH) {
    struct usb_ep *ep = &dep->endpoint;
    unsigned int mult = 2;
    unsigned int maxp = usb_endpoint_maxp(ep->desc);

    if (length <= (2 * maxp))
     mult--;

    if (length <= maxp)
     mult--;

    trb->size |= DWC3_TRB_SIZE_PCM1(mult);
   }
  } else {
   trb->ctrl = DWC3_TRBCTL_ISOCHRONOUS;
  }


  trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
  break;

 case 131:
 case 129:
  trb->ctrl = DWC3_TRBCTL_NORMAL;
  break;
 default:




  dev_WARN(dwc->dev, "Unknown endpoint type %d\n",
    usb_endpoint_type(dep->endpoint.desc));
 }





 if (usb_endpoint_dir_out(dep->endpoint.desc)) {
  if (!dep->stream_capable)
   trb->ctrl |= DWC3_TRB_CTRL_CSP;

  if (short_not_ok)
   trb->ctrl |= DWC3_TRB_CTRL_ISP_IMI;
 }

 if ((!no_interrupt && !chain) ||
   (dwc3_calc_trbs_left(dep) == 1))
  trb->ctrl |= DWC3_TRB_CTRL_IOC;

 if (chain)
  trb->ctrl |= DWC3_TRB_CTRL_CHN;

 if (usb_endpoint_xfer_bulk(dep->endpoint.desc) && dep->stream_capable)
  trb->ctrl |= DWC3_TRB_CTRL_SID_SOFN(stream_id);

 trb->ctrl |= DWC3_TRB_CTRL_HWO;

 dwc3_ep_inc_enq(dep);

 trace_dwc3_prepare_trb(dep, trb);
}
