
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_ep {int flags; } ;
struct dwc3 {struct dwc3_ep** eps; } ;
typedef int __le16 ;


 int DWC3_EP_ENABLED ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_DIR_MASK ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static struct dwc3_ep *dwc3_wIndex_to_dep(struct dwc3 *dwc, __le16 wIndex_le)
{
 struct dwc3_ep *dep;
 u32 windex = le16_to_cpu(wIndex_le);
 u32 epnum;

 epnum = (windex & USB_ENDPOINT_NUMBER_MASK) << 1;
 if ((windex & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
  epnum |= 1;

 dep = dwc->eps[epnum];
 if (dep->flags & DWC3_EP_ENABLED)
  return dep;

 return ((void*)0);
}
