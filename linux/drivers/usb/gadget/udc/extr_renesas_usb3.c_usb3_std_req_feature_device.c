
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct TYPE_2__ {int speed; } ;
struct renesas_usb3 {int test_mode; TYPE_1__ gadget; } ;





 int USB_SPEED_SUPER ;
 int le16_to_cpu (int ) ;
 int usb3_feature_u1_enable (struct renesas_usb3*,int) ;
 int usb3_feature_u2_enable (struct renesas_usb3*,int) ;

__attribute__((used)) static bool usb3_std_req_feature_device(struct renesas_usb3 *usb3,
     struct usb_ctrlrequest *ctrl, bool set)
{
 bool stall = 1;
 u16 w_value = le16_to_cpu(ctrl->wValue);

 switch (w_value) {
 case 130:
  if (!set)
   break;
  usb3->test_mode = le16_to_cpu(ctrl->wIndex) >> 8;
  stall = 0;
  break;
 case 129:
 case 128:
  if (usb3->gadget.speed != USB_SPEED_SUPER)
   break;
  if (w_value == 129)
   usb3_feature_u1_enable(usb3, set);
  if (w_value == 128)
   usb3_feature_u2_enable(usb3, set);
  stall = 0;
  break;
 default:
  break;
 }

 return stall;
}
