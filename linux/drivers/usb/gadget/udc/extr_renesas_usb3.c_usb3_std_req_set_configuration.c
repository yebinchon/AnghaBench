
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wValue; } ;
struct renesas_usb3 {int dummy; } ;


 int USB3_USB_COM_CON ;
 int USB_COM_CON_CONF ;
 scalar_t__ le16_to_cpu (int ) ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static bool usb3_std_req_set_configuration(struct renesas_usb3 *usb3,
        struct usb_ctrlrequest *ctrl)
{
 if (le16_to_cpu(ctrl->wValue) > 0)
  usb3_set_bit(usb3, USB_COM_CON_CONF, USB3_USB_COM_CON);
 else
  usb3_clear_bit(usb3, USB_COM_CON_CONF, USB3_USB_COM_CON);

 return 0;
}
