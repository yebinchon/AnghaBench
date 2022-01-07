
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct dwc3_ep {int flags; } ;
struct dwc3 {int dummy; } ;


 int DWC3_EP_WEDGE ;
 int EINVAL ;

 int __dwc3_gadget_ep_set_halt (struct dwc3_ep*,int,int) ;
 struct dwc3_ep* dwc3_wIndex_to_dep (struct dwc3*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int dwc3_ep0_handle_endpoint(struct dwc3 *dwc,
  struct usb_ctrlrequest *ctrl, int set)
{
 struct dwc3_ep *dep;
 u32 wValue;
 int ret;

 wValue = le16_to_cpu(ctrl->wValue);

 switch (wValue) {
 case 128:
  dep = dwc3_wIndex_to_dep(dwc, ctrl->wIndex);
  if (!dep)
   return -EINVAL;

  if (set == 0 && (dep->flags & DWC3_EP_WEDGE))
   break;

  ret = __dwc3_gadget_ep_set_halt(dep, set, 1);
  if (ret)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
