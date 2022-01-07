
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct TYPE_2__ {int state; } ;
struct dwc3 {TYPE_1__ gadget; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int EINVAL ;





 int dwc3_ep0_handle_test (struct dwc3*,int,int,int) ;
 int dwc3_ep0_handle_u1 (struct dwc3*,int,int) ;
 int dwc3_ep0_handle_u2 (struct dwc3*,int,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int dwc3_ep0_handle_device(struct dwc3 *dwc,
  struct usb_ctrlrequest *ctrl, int set)
{
 enum usb_device_state state;
 u32 wValue;
 u32 wIndex;
 int ret = 0;

 wValue = le16_to_cpu(ctrl->wValue);
 wIndex = le16_to_cpu(ctrl->wIndex);
 state = dwc->gadget.state;

 switch (wValue) {
 case 131:
  break;




 case 129:
  ret = dwc3_ep0_handle_u1(dwc, state, set);
  break;
 case 128:
  ret = dwc3_ep0_handle_u2(dwc, state, set);
  break;
 case 132:
  ret = -EINVAL;
  break;
 case 130:
  ret = dwc3_ep0_handle_test(dwc, state, wIndex, set);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
