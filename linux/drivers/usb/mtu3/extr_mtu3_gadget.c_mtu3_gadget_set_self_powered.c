
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct mtu3 {int is_self_powered; } ;


 struct mtu3* gadget_to_mtu3 (struct usb_gadget*) ;

__attribute__((used)) static int mtu3_gadget_set_self_powered(struct usb_gadget *gadget,
  int is_selfpowered)
{
 struct mtu3 *mtu = gadget_to_mtu3(gadget);

 mtu->is_self_powered = !!is_selfpowered;
 return 0;
}
