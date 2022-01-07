
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int DRD_CON_VBOUT ;
 int USB3_DRD_CON ;
 int usb3_clear_bit (struct renesas_usb3*,int ,int ) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_vbus_out(struct renesas_usb3 *usb3, bool enable)
{
 if (enable)
  usb3_set_bit(usb3, DRD_CON_VBOUT, USB3_DRD_CON);
 else
  usb3_clear_bit(usb3, DRD_CON_VBOUT, USB3_DRD_CON);
}
