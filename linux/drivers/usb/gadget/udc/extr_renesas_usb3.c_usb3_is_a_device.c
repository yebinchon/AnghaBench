
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB3_USB_OTG_STA ;
 int USB_OTG_IDMON ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static bool usb3_is_a_device(struct renesas_usb3 *usb3)
{
 return !(usb3_read(usb3, USB3_USB_OTG_STA) & USB_OTG_IDMON);
}
