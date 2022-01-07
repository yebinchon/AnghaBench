
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_ctrlrequest {int wIndex; int wLength; int wValue; } ;
struct TYPE_2__ {scalar_t__ isoch_delay; } ;
struct dwc3 {TYPE_1__ gadget; } ;


 int EINVAL ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int dwc3_ep0_set_isoch_delay(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 u16 wLength;
 u16 wValue;
 u16 wIndex;

 wValue = le16_to_cpu(ctrl->wValue);
 wLength = le16_to_cpu(ctrl->wLength);
 wIndex = le16_to_cpu(ctrl->wIndex);

 if (wIndex || wLength)
  return -EINVAL;

 dwc->gadget.isoch_delay = wValue;

 return 0;
}
