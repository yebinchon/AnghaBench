
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int test_mode_nr; int test_mode; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int EINVAL ;






__attribute__((used)) static int dwc3_ep0_handle_test(struct dwc3 *dwc, enum usb_device_state state,
  u32 wIndex, int set)
{
 if ((wIndex & 0xff) != 0)
  return -EINVAL;
 if (!set)
  return -EINVAL;

 switch (wIndex >> 8) {
 case 131:
 case 130:
 case 128:
 case 129:
 case 132:
  dwc->test_mode_nr = wIndex >> 8;
  dwc->test_mode = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
