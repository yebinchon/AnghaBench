
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_usb_phy {int in_urb; } ;
struct pn533 {scalar_t__ device_type; struct pn533_usb_phy* phy; } ;
typedef int gfp_t ;


 scalar_t__ PN533_DEVICE_ACR122U ;
 int pn533_usb_send_ack (struct pn533*,int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void pn533_usb_abort_cmd(struct pn533 *dev, gfp_t flags)
{
 struct pn533_usb_phy *phy = dev->phy;






 if (dev->device_type == PN533_DEVICE_ACR122U)
  return;


 pn533_usb_send_ack(dev, flags);


 usb_kill_urb(phy->in_urb);
}
