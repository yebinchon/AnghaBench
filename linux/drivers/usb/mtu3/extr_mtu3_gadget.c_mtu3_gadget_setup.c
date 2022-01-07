
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; scalar_t__ sg_supported; int speed; int max_speed; int * ops; } ;
struct mtu3 {int delayed_status; int dev; TYPE_1__ g; scalar_t__ is_active; int max_speed; } ;


 int MTU3_DRIVER_NAME ;
 int USB_SPEED_UNKNOWN ;
 int dev_err (int ,char*) ;
 int mtu3_gadget_init_eps (struct mtu3*) ;
 int mtu3_gadget_ops ;
 int usb_add_gadget_udc (int ,TYPE_1__*) ;

int mtu3_gadget_setup(struct mtu3 *mtu)
{
 int ret;

 mtu->g.ops = &mtu3_gadget_ops;
 mtu->g.max_speed = mtu->max_speed;
 mtu->g.speed = USB_SPEED_UNKNOWN;
 mtu->g.sg_supported = 0;
 mtu->g.name = MTU3_DRIVER_NAME;
 mtu->is_active = 0;
 mtu->delayed_status = 0;

 mtu3_gadget_init_eps(mtu);

 ret = usb_add_gadget_udc(mtu->dev, &mtu->g);
 if (ret)
  dev_err(mtu->dev, "failed to register udc\n");

 return ret;
}
