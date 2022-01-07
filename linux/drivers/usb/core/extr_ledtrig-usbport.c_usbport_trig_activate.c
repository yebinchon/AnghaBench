
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct usbport_trig_data {TYPE_2__ nb; int ports; struct led_classdev* led_cdev; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct TYPE_3__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct usbport_trig_data*) ;
 struct usbport_trig_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct usbport_trig_data*) ;
 int ports_group ;
 int sysfs_create_group (int *,int *) ;
 int usb_for_each_dev (struct usbport_trig_data*,int ) ;
 int usb_register_notify (TYPE_2__*) ;
 int usbport_trig_add_usb_dev_ports ;
 int usbport_trig_notify ;
 int usbport_trig_update_count (struct usbport_trig_data*) ;

__attribute__((used)) static int usbport_trig_activate(struct led_classdev *led_cdev)
{
 struct usbport_trig_data *usbport_data;
 int err;

 usbport_data = kzalloc(sizeof(*usbport_data), GFP_KERNEL);
 if (!usbport_data)
  return -ENOMEM;
 usbport_data->led_cdev = led_cdev;


 INIT_LIST_HEAD(&usbport_data->ports);
 err = sysfs_create_group(&led_cdev->dev->kobj, &ports_group);
 if (err)
  goto err_free;
 usb_for_each_dev(usbport_data, usbport_trig_add_usb_dev_ports);
 usbport_trig_update_count(usbport_data);


 usbport_data->nb.notifier_call = usbport_trig_notify;
 led_set_trigger_data(led_cdev, usbport_data);
 usb_register_notify(&usbport_data->nb);
 return 0;

err_free:
 kfree(usbport_data);
 return err;
}
