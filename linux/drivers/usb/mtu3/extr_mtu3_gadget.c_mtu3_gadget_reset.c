
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ speed; } ;
struct mtu3 {TYPE_1__ g; int dev; } ;


 scalar_t__ USB_SPEED_UNKNOWN ;
 int dev_dbg (int ,char*) ;
 int mtu3_gadget_disconnect (struct mtu3*) ;
 int mtu3_state_reset (struct mtu3*) ;

void mtu3_gadget_reset(struct mtu3 *mtu)
{
 dev_dbg(mtu->dev, "gadget RESET\n");


 if (mtu->g.speed != USB_SPEED_UNKNOWN)
  mtu3_gadget_disconnect(mtu);
 else
  mtu3_state_reset(mtu);
}
