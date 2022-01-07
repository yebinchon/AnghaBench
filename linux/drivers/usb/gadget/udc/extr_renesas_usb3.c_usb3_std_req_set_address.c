
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wValue; } ;
struct renesas_usb3 {int dummy; } ;


 int le16_to_cpu (int ) ;
 int usb3_set_device_address (struct renesas_usb3*,int) ;
 int usb3_set_p0_con_for_no_data (struct renesas_usb3*) ;

__attribute__((used)) static bool usb3_std_req_set_address(struct renesas_usb3 *usb3,
         struct usb_ctrlrequest *ctrl)
{
 if (le16_to_cpu(ctrl->wValue) >= 128)
  return 1;

 usb3_set_device_address(usb3, le16_to_cpu(ctrl->wValue));
 usb3_set_p0_con_for_no_data(usb3);

 return 0;
}
