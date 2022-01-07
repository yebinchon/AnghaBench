
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct usb_port {int quirks; int dev; } ;
struct usb_hub {TYPE_2__* hdev; int * intfdev; int warm_reset_bits; struct usb_port** ports; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int bus; } ;
struct TYPE_6__ {int quirks; } ;
struct TYPE_5__ {int (* reset_device ) (struct usb_hcd*,struct usb_device*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOTCONN ;
 unsigned int HUB_LONG_RESET_TIME ;
 int PORT_RESET_TRIES ;
 int USB_PORT_FEAT_BH_PORT_RESET ;
 int USB_PORT_FEAT_C_BH_PORT_RESET ;
 int USB_PORT_FEAT_C_CONNECTION ;
 int USB_PORT_FEAT_C_PORT_LINK_STATE ;
 int USB_PORT_FEAT_C_RESET ;
 int USB_PORT_FEAT_RESET ;
 int USB_PORT_QUIRK_FAST_ENUM ;
 int USB_QUIRK_HUB_SLOW_RESET ;
 int USB_STATE_DEFAULT ;
 int USB_STATE_NOTATTACHED ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int clear_bit (int,int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int down_read (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int hub_is_superspeed (TYPE_2__*) ;
 scalar_t__ hub_port_status (struct usb_hub*,int,int *,int *) ;
 int hub_port_wait_reset (struct usb_hub*,int,struct usb_device*,unsigned int,int) ;
 scalar_t__ hub_port_warm_reset_required (struct usb_hub*,int,int ) ;
 int msleep (int) ;
 int set_port_feature (TYPE_2__*,int,int ) ;
 int stub1 (struct usb_hcd*,struct usb_device*) ;
 int up_read (int *) ;
 int update_devnum (struct usb_device*,int ) ;
 int usb_clear_port_feature (TYPE_2__*,int,int ) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hub_port_reset(struct usb_hub *hub, int port1,
   struct usb_device *udev, unsigned int delay, bool warm)
{
 int i, status;
 u16 portchange, portstatus;
 struct usb_port *port_dev = hub->ports[port1 - 1];
 int reset_recovery_time;

 if (!hub_is_superspeed(hub->hdev)) {
  if (warm) {
   dev_err(hub->intfdev, "only USB3 hub support "
      "warm reset\n");
   return -EINVAL;
  }



  down_read(&ehci_cf_port_reset_rwsem);
 } else if (!warm) {




  if (hub_port_status(hub, port1, &portstatus, &portchange) == 0)
   if (hub_port_warm_reset_required(hub, port1,
       portstatus))
    warm = 1;
 }
 clear_bit(port1, hub->warm_reset_bits);


 for (i = 0; i < PORT_RESET_TRIES; i++) {
  status = set_port_feature(hub->hdev, port1, (warm ?
     USB_PORT_FEAT_BH_PORT_RESET :
     USB_PORT_FEAT_RESET));
  if (status == -ENODEV) {
   ;
  } else if (status) {
   dev_err(&port_dev->dev,
     "cannot %sreset (err = %d)\n",
     warm ? "warm " : "", status);
  } else {
   status = hub_port_wait_reset(hub, port1, udev, delay,
        warm);
   if (status && status != -ENOTCONN && status != -ENODEV)
    dev_dbg(hub->intfdev,
      "port_wait_reset: err = %d\n",
      status);
  }


  if (status == 0 || status == -ENOTCONN || status == -ENODEV) {
   usb_clear_port_feature(hub->hdev, port1,
     USB_PORT_FEAT_C_RESET);

   if (!hub_is_superspeed(hub->hdev))
    goto done;

   usb_clear_port_feature(hub->hdev, port1,
     USB_PORT_FEAT_C_BH_PORT_RESET);
   usb_clear_port_feature(hub->hdev, port1,
     USB_PORT_FEAT_C_PORT_LINK_STATE);

   if (udev)
    usb_clear_port_feature(hub->hdev, port1,
     USB_PORT_FEAT_C_CONNECTION);





   if (hub_port_status(hub, port1,
     &portstatus, &portchange) < 0)
    goto done;

   if (!hub_port_warm_reset_required(hub, port1,
     portstatus))
    goto done;





   if (!warm) {
    dev_dbg(&port_dev->dev,
      "hot reset failed, warm reset\n");
    warm = 1;
   }
  }

  dev_dbg(&port_dev->dev,
    "not enabled, trying %sreset again...\n",
    warm ? "warm " : "");
  delay = HUB_LONG_RESET_TIME;
 }

 dev_err(&port_dev->dev, "Cannot enable. Maybe the USB cable is bad?\n");

done:
 if (status == 0) {
  if (port_dev->quirks & USB_PORT_QUIRK_FAST_ENUM)
   usleep_range(10000, 12000);
  else {

   reset_recovery_time = 10 + 40;


   if (hub->hdev->quirks & USB_QUIRK_HUB_SLOW_RESET)
    reset_recovery_time += 100;

   msleep(reset_recovery_time);
  }

  if (udev) {
   struct usb_hcd *hcd = bus_to_hcd(udev->bus);

   update_devnum(udev, 0);



   if (hcd->driver->reset_device)
    hcd->driver->reset_device(hcd, udev);

   usb_set_device_state(udev, USB_STATE_DEFAULT);
  }
 } else {
  if (udev)
   usb_set_device_state(udev, USB_STATE_NOTATTACHED);
 }

 if (!hub_is_superspeed(hub->hdev))
  up_read(&ehci_cf_port_reset_rwsem);

 return status;
}
