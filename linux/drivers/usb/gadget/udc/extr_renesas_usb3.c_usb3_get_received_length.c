
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3_ep {scalar_t__ num; } ;
struct renesas_usb3 {int dummy; } ;


 int USB3_P0_LNG ;
 int USB3_PN_LNG ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static u32 usb3_get_received_length(struct renesas_usb3_ep *usb3_ep)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 u32 lng_reg = usb3_ep->num ? USB3_PN_LNG : USB3_P0_LNG;

 return usb3_read(usb3, lng_reg);
}
