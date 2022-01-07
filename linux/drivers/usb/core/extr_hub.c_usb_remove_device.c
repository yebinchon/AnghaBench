
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_hub {int removed_bits; int intfdev; } ;
struct usb_device {int portnum; int parent; } ;


 int EINVAL ;
 int hub_port_logical_disconnect (struct usb_hub*,int ) ;
 int set_bit (int ,int ) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_autopm_get_interface (struct usb_interface*) ;
 int usb_autopm_put_interface (struct usb_interface*) ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

int usb_remove_device(struct usb_device *udev)
{
 struct usb_hub *hub;
 struct usb_interface *intf;

 if (!udev->parent)
  return -EINVAL;
 hub = usb_hub_to_struct_hub(udev->parent);
 intf = to_usb_interface(hub->intfdev);

 usb_autopm_get_interface(intf);
 set_bit(udev->portnum, hub->removed_bits);
 hub_port_logical_disconnect(hub, udev->portnum);
 usb_autopm_put_interface(intf);
 return 0;
}
