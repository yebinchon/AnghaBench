
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;
struct renesas_usb3 {int dummy; } ;


 int PN_MOD_DIR ;
 int PN_MOD_EPNUM (int ) ;
 int PN_MOD_TYPE (int ) ;
 int USB3_PN_MOD ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static void usb3_write_pn_mod(struct renesas_usb3_ep *usb3_ep,
         const struct usb_endpoint_descriptor *desc)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 u32 val = 0;

 val |= usb3_ep->dir_in ? PN_MOD_DIR : 0;
 val |= PN_MOD_TYPE(usb_endpoint_type(desc));
 val |= PN_MOD_EPNUM(usb_endpoint_num(desc));
 usb3_write(usb3, val, USB3_PN_MOD);
}
