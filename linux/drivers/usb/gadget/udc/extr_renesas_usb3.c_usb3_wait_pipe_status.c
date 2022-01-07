
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3_ep {scalar_t__ num; } ;
struct renesas_usb3 {int dummy; } ;


 int USB3_P0_STA ;
 int USB3_PN_STA ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_wait (struct renesas_usb3*,int ,int ,int ) ;

__attribute__((used)) static int usb3_wait_pipe_status(struct renesas_usb3_ep *usb3_ep, u32 mask)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 u32 sta_reg = usb3_ep->num ? USB3_PN_STA : USB3_P0_STA;

 return usb3_wait(usb3, sta_reg, mask, mask);
}
