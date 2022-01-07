
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct mtu3 {int mac_base; } ;


 int U3D_USB20_FRAME_NUM ;
 struct mtu3* gadget_to_mtu3 (struct usb_gadget*) ;
 scalar_t__ mtu3_readl (int ,int ) ;

__attribute__((used)) static int mtu3_gadget_get_frame(struct usb_gadget *gadget)
{
 struct mtu3 *mtu = gadget_to_mtu3(gadget);

 return (int)mtu3_readl(mtu->mac_base, U3D_USB20_FRAME_NUM);
}
