
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int g; } ;


 int usb_del_gadget_udc (int *) ;

void mtu3_gadget_cleanup(struct mtu3 *mtu)
{
 usb_del_gadget_udc(&mtu->g);
}
