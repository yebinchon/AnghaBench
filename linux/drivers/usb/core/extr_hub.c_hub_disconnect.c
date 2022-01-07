
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_hub {int disconnected; int kref; int buffer; int status; int descriptor; int ports; int urb; TYPE_1__* hdev; scalar_t__ error; } ;
struct usb_device {int maxchild; } ;
struct TYPE_2__ {scalar_t__ speed; } ;


 int HUB_DISCONNECT ;
 scalar_t__ USB_SPEED_HIGH ;
 int device_state_lock ;
 int highspeed_hubs ;
 int hub_quiesce (struct usb_hub*,int ) ;
 int hub_release ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_suspend_ignore_children (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (int ) ;
 struct usb_hub* usb_get_intfdata (struct usb_interface*) ;
 int usb_hub_remove_port_device (struct usb_hub*,int) ;
 int usb_port_peer_mutex ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void hub_disconnect(struct usb_interface *intf)
{
 struct usb_hub *hub = usb_get_intfdata(intf);
 struct usb_device *hdev = interface_to_usbdev(intf);
 int port1;





 hub->disconnected = 1;


 hub->error = 0;
 hub_quiesce(hub, HUB_DISCONNECT);

 mutex_lock(&usb_port_peer_mutex);


 spin_lock_irq(&device_state_lock);
 port1 = hdev->maxchild;
 hdev->maxchild = 0;
 usb_set_intfdata(intf, ((void*)0));
 spin_unlock_irq(&device_state_lock);

 for (; port1 > 0; --port1)
  usb_hub_remove_port_device(hub, port1);

 mutex_unlock(&usb_port_peer_mutex);

 if (hub->hdev->speed == USB_SPEED_HIGH)
  highspeed_hubs--;

 usb_free_urb(hub->urb);
 kfree(hub->ports);
 kfree(hub->descriptor);
 kfree(hub->status);
 kfree(hub->buffer);

 pm_suspend_ignore_children(&intf->dev, 0);
 kref_put(&hub->kref, hub_release);
}
