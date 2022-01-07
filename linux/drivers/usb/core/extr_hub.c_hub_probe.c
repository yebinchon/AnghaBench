
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int needs_remote_wakeup; int dev; struct usb_host_interface* cur_altsetting; } ;
struct usb_hub {int quirk_check_port_auto_suspend; int irq_urb_retry; int irq_urb_lock; int events; int init_work; int leds; struct usb_device* hdev; int * intfdev; int kref; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_5__ {scalar_t__ autosuspend_delay; } ;
struct TYPE_7__ {TYPE_1__ power; } ;
struct usb_device {scalar_t__ level; scalar_t__ speed; scalar_t__ parent; int bus; TYPE_3__ dev; } ;
struct hc_driver {scalar_t__ bus_resume; scalar_t__ bus_suspend; } ;
struct TYPE_8__ {struct hc_driver* driver; } ;
struct TYPE_6__ {int desc; } ;


 int E2BIG ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HUB_QUIRK_CHECK_PORT_AUTOSUSPEND ;
 int INIT_DELAYED_WORK (int *,int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ MAX_TOPO_LEVEL ;
 scalar_t__ USB_SPEED_HIGH ;
 TYPE_4__* bus_to_hcd (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int highspeed_hubs ;
 scalar_t__ hub_configure (struct usb_hub*,int *) ;
 int hub_descriptor_is_sane (struct usb_host_interface*) ;
 int hub_disconnect (struct usb_interface*) ;
 int hub_event ;
 int hub_retry_irq_urb ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 struct usb_hub* kzalloc (int,int ) ;
 int * led_work ;
 int pm_runtime_set_autosuspend_delay (TYPE_3__*,int ) ;
 int pm_suspend_ignore_children (int *,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_hub*) ;

__attribute__((used)) static int hub_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_host_interface *desc;
 struct usb_device *hdev;
 struct usb_hub *hub;

 desc = intf->cur_altsetting;
 hdev = interface_to_usbdev(intf);
 if (hdev->parent) {
  usb_enable_autosuspend(hdev);
 } else {
  const struct hc_driver *drv = bus_to_hcd(hdev->bus)->driver;

  if (drv->bus_suspend && drv->bus_resume)
   usb_enable_autosuspend(hdev);
 }

 if (hdev->level == MAX_TOPO_LEVEL) {
  dev_err(&intf->dev,
   "Unsupported bus topology: hub nested too deep\n");
  return -E2BIG;
 }
 if (!hub_descriptor_is_sane(desc)) {
  dev_err(&intf->dev, "bad descriptor, ignoring hub\n");
  return -EIO;
 }


 dev_info(&intf->dev, "USB hub found\n");

 hub = kzalloc(sizeof(*hub), GFP_KERNEL);
 if (!hub)
  return -ENOMEM;

 kref_init(&hub->kref);
 hub->intfdev = &intf->dev;
 hub->hdev = hdev;
 INIT_DELAYED_WORK(&hub->leds, led_work);
 INIT_DELAYED_WORK(&hub->init_work, ((void*)0));
 INIT_WORK(&hub->events, hub_event);
 spin_lock_init(&hub->irq_urb_lock);
 timer_setup(&hub->irq_urb_retry, hub_retry_irq_urb, 0);
 usb_get_intf(intf);
 usb_get_dev(hdev);

 usb_set_intfdata(intf, hub);
 intf->needs_remote_wakeup = 1;
 pm_suspend_ignore_children(&intf->dev, 1);

 if (hdev->speed == USB_SPEED_HIGH)
  highspeed_hubs++;

 if (id->driver_info & HUB_QUIRK_CHECK_PORT_AUTOSUSPEND)
  hub->quirk_check_port_auto_suspend = 1;

 if (hub_configure(hub, &desc->endpoint[0].desc) >= 0)
  return 0;

 hub_disconnect(intf);
 return -ENODEV;
}
