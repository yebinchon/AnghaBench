
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB30_CON_POW_SEL_IN_U3 ;
 int USB3_USB30_CON ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static int usb3_is_usb3_phy_in_u3(struct renesas_usb3 *usb3)
{
 return usb3_read(usb3, USB3_USB30_CON) & USB30_CON_POW_SEL_IN_U3;
}
