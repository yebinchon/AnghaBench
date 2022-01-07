
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dev; struct mtu3* u3d; } ;
struct mtu3 {int dummy; } ;


 int device_init_wakeup (int ,int) ;
 int mtu3_gadget_cleanup (struct mtu3*) ;
 int mtu3_hw_exit (struct mtu3*) ;

void ssusb_gadget_exit(struct ssusb_mtk *ssusb)
{
 struct mtu3 *mtu = ssusb->u3d;

 mtu3_gadget_cleanup(mtu);
 device_init_wakeup(ssusb->dev, 0);
 mtu3_hw_exit(mtu);
}
