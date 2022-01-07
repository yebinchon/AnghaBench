
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int kobj; } ;
struct usb_port {TYPE_2__ dev; } ;
struct usb_hub {int child_usage_bits; struct usb_port** ports; } ;
struct TYPE_8__ {int kobj; } ;
struct usb_device {int portnum; TYPE_1__ dev; int ep0; scalar_t__ parent; int devnum; } ;


 int USB_STATE_NOTATTACHED ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int device_del (TYPE_1__*) ;
 int device_state_lock ;
 int hub_disconnect_children (struct usb_device*) ;
 int hub_free_dev (struct usb_device*) ;
 int pm_runtime_barrier (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int put_device (TYPE_1__*) ;
 int release_devnum (struct usb_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_remove_link (int *,char*) ;
 scalar_t__ test_and_clear_bit (int,int ) ;
 int test_and_set_bit (int,int ) ;
 int usb_disable_device (struct usb_device*,int ) ;
 int usb_hcd_synchronize_unlinks (struct usb_device*) ;
 struct usb_hub* usb_hub_to_struct_hub (scalar_t__) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_remove_ep_devs (int *) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usb_unlock_device (struct usb_device*) ;

void usb_disconnect(struct usb_device **pdev)
{
 struct usb_port *port_dev = ((void*)0);
 struct usb_device *udev = *pdev;
 struct usb_hub *hub = ((void*)0);
 int port1 = 1;





 usb_set_device_state(udev, USB_STATE_NOTATTACHED);
 dev_info(&udev->dev, "USB disconnect, device number %d\n",
   udev->devnum);





 pm_runtime_barrier(&udev->dev);

 usb_lock_device(udev);

 hub_disconnect_children(udev);





 dev_dbg(&udev->dev, "unregistering device\n");
 usb_disable_device(udev, 0);
 usb_hcd_synchronize_unlinks(udev);

 if (udev->parent) {
  port1 = udev->portnum;
  hub = usb_hub_to_struct_hub(udev->parent);
  port_dev = hub->ports[port1 - 1];

  sysfs_remove_link(&udev->dev.kobj, "port");
  sysfs_remove_link(&port_dev->dev.kobj, "device");





  if (!test_and_set_bit(port1, hub->child_usage_bits))
   pm_runtime_get_sync(&port_dev->dev);
 }

 usb_remove_ep_devs(&udev->ep0);
 usb_unlock_device(udev);





 device_del(&udev->dev);




 release_devnum(udev);


 spin_lock_irq(&device_state_lock);
 *pdev = ((void*)0);
 spin_unlock_irq(&device_state_lock);

 if (port_dev && test_and_clear_bit(port1, hub->child_usage_bits))
  pm_runtime_put(&port_dev->dev);

 hub_free_dev(udev);

 put_device(&udev->dev);
}
