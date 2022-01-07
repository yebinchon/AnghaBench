
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hub {TYPE_1__* hdev; int power_bits; int intfdev; } ;
struct TYPE_3__ {int maxchild; } ;


 int USB_PORT_FEAT_POWER ;
 int dev_dbg (int ,char*) ;
 scalar_t__ hub_is_port_power_switchable (struct usb_hub*) ;
 int hub_power_on_good_delay (struct usb_hub*) ;
 int msleep (int ) ;
 int set_port_feature (TYPE_1__*,int,int ) ;
 scalar_t__ test_bit (int,int ) ;
 int usb_clear_port_feature (TYPE_1__*,int,int ) ;

__attribute__((used)) static void hub_power_on(struct usb_hub *hub, bool do_delay)
{
 int port1;







 if (hub_is_port_power_switchable(hub))
  dev_dbg(hub->intfdev, "enabling power on all ports\n");
 else
  dev_dbg(hub->intfdev, "trying to enable port power on "
    "non-switchable hub\n");
 for (port1 = 1; port1 <= hub->hdev->maxchild; port1++)
  if (test_bit(port1, hub->power_bits))
   set_port_feature(hub->hdev, port1, USB_PORT_FEAT_POWER);
  else
   usb_clear_port_feature(hub->hdev, port1,
      USB_PORT_FEAT_POWER);
 if (do_delay)
  msleep(hub_power_on_good_delay(hub));
}
