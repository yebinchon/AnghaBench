
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_phy {TYPE_1__* otg; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ENODEV ;
 scalar_t__ OTG_STATE_B_PERIPHERAL ;
 int enable_vbus_draw (int ,unsigned int) ;
 int the_transceiver ;

__attribute__((used)) static int
isp1301_set_power(struct usb_phy *dev, unsigned mA)
{
 if (!the_transceiver)
  return -ENODEV;
 if (dev->otg->state == OTG_STATE_B_PERIPHERAL)
  enable_vbus_draw(the_transceiver, mA);
 return 0;
}
