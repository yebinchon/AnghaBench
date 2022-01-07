
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * driver; int * type; int groups; int parent; } ;
struct usb_port {int portnum; int usb3_lpm_u1_permit; int usb3_lpm_u2_permit; int is_superspeed; struct usb_port* req; TYPE_1__ dev; int status_lock; } ;
struct usb_hub {struct usb_device* hdev; int intfdev; int power_bits; struct usb_port** ports; } ;
struct usb_device {int dev; } ;


 int DEV_PM_QOS_FLAGS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PM_QOS_FLAG_NO_POWER_OFF ;
 int dev_name (int *) ;
 int dev_pm_qos_add_request (TYPE_1__*,struct usb_port*,int ,int ) ;
 int dev_pm_qos_expose_flags (TYPE_1__*,int ) ;
 int dev_pm_qos_remove_request (struct usb_port*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int dev_warn (TYPE_1__*,char*) ;
 int device_enable_async_suspend (TYPE_1__*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int find_and_link_peer (struct usb_hub*,int) ;
 int hub_is_port_power_switchable (struct usb_hub*) ;
 scalar_t__ hub_is_superspeed (struct usb_device*) ;
 int kfree (struct usb_port*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_noresume (TYPE_1__*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int port_dev_group ;
 int port_dev_usb3_group ;
 int put_device (TYPE_1__*) ;
 int set_bit (int,int ) ;
 int usb_port_device_type ;
 int usb_port_driver ;

int usb_hub_create_port_device(struct usb_hub *hub, int port1)
{
 struct usb_port *port_dev;
 struct usb_device *hdev = hub->hdev;
 int retval;

 port_dev = kzalloc(sizeof(*port_dev), GFP_KERNEL);
 if (!port_dev)
  return -ENOMEM;

 port_dev->req = kzalloc(sizeof(*(port_dev->req)), GFP_KERNEL);
 if (!port_dev->req) {
  kfree(port_dev);
  return -ENOMEM;
 }

 hub->ports[port1 - 1] = port_dev;
 port_dev->portnum = port1;
 set_bit(port1, hub->power_bits);
 port_dev->dev.parent = hub->intfdev;
 if (hub_is_superspeed(hdev)) {
  port_dev->usb3_lpm_u1_permit = 1;
  port_dev->usb3_lpm_u2_permit = 1;
  port_dev->dev.groups = port_dev_usb3_group;
 } else
  port_dev->dev.groups = port_dev_group;
 port_dev->dev.type = &usb_port_device_type;
 port_dev->dev.driver = &usb_port_driver;
 if (hub_is_superspeed(hub->hdev))
  port_dev->is_superspeed = 1;
 dev_set_name(&port_dev->dev, "%s-port%d", dev_name(&hub->hdev->dev),
   port1);
 mutex_init(&port_dev->status_lock);
 retval = device_register(&port_dev->dev);
 if (retval) {
  put_device(&port_dev->dev);
  return retval;
 }


 retval = dev_pm_qos_add_request(&port_dev->dev, port_dev->req,
   DEV_PM_QOS_FLAGS, PM_QOS_FLAG_NO_POWER_OFF);
 if (retval < 0) {
  device_unregister(&port_dev->dev);
  return retval;
 }

 find_and_link_peer(hub, port1);






 pm_runtime_set_active(&port_dev->dev);
 pm_runtime_get_noresume(&port_dev->dev);
 pm_runtime_enable(&port_dev->dev);
 device_enable_async_suspend(&port_dev->dev);





 if (!hub_is_port_power_switchable(hub))
  return 0;


 retval = dev_pm_qos_expose_flags(&port_dev->dev,
   PM_QOS_FLAG_NO_POWER_OFF);
 if (retval < 0) {
  dev_warn(&port_dev->dev, "failed to expose pm_qos_no_poweroff\n");
  return 0;
 }


 retval = dev_pm_qos_remove_request(port_dev->req);
 if (retval >= 0) {
  kfree(port_dev->req);
  port_dev->req = ((void*)0);
 }
 return 0;
}
