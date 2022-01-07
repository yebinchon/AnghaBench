
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct TYPE_14__ {int of_node; struct TYPE_14__* parent; int dma_pfn_offset; int dma_mask; int groups; int * type; int * bus; } ;
struct TYPE_12__ {int bDescriptorType; int bLength; } ;
struct TYPE_13__ {TYPE_2__ desc; int urb_list; } ;
struct usb_device {int lpm_disable_count; int can_submit; char* devpath; int level; unsigned int portnum; int wusb; int authorized; void* active_duration; void* connect_time; TYPE_4__ dev; int filelist; struct usb_device* parent; struct usb_bus* bus; scalar_t__ route; TYPE_3__ ep0; int urbnum; int state; } ;
struct usb_bus {int busnum; TYPE_7__* sysdev; TYPE_4__* controller; } ;
struct TYPE_15__ {int dma_pfn_offset; int dma_mask; } ;
struct TYPE_11__ {int (* alloc_dev ) (struct usb_hcd*,struct usb_device*) ;} ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DT_ENDPOINT ;
 int USB_DT_ENDPOINT_SIZE ;
 int USB_STATE_ATTACHED ;
 int atomic_set (int *,int ) ;
 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;
 int dev_set_name (TYPE_4__*,char*,int ,...) ;
 int dev_to_node (TYPE_7__*) ;
 int device_initialize (TYPE_4__*) ;
 int device_set_of_node_from_dev (TYPE_4__*,TYPE_7__*) ;
 void* jiffies ;
 int kfree (struct usb_device*) ;
 struct usb_device* kzalloc (int,int ) ;
 int pm_runtime_set_autosuspend_delay (TYPE_4__*,int) ;
 int set_dev_node (TYPE_4__*,int ) ;
 int snprintf (char*,int,char*,...) ;
 int stub1 (struct usb_hcd*,struct usb_device*) ;
 scalar_t__ unlikely (int) ;
 int usb_autosuspend_delay ;
 scalar_t__ usb_bus_is_wusb (struct usb_bus*) ;
 int usb_bus_type ;
 int usb_dev_authorized (struct usb_device*,struct usb_hcd*) ;
 int usb_device_groups ;
 int usb_device_type ;
 int usb_enable_endpoint (struct usb_device*,TYPE_3__*,int) ;
 int usb_get_hcd (struct usb_hcd*) ;
 unsigned int usb_hcd_find_raw_port_number (struct usb_hcd*,unsigned int) ;
 int usb_of_get_device_node (struct usb_device*,unsigned int) ;
 int usb_put_hcd (struct usb_hcd*) ;

struct usb_device *usb_alloc_dev(struct usb_device *parent,
     struct usb_bus *bus, unsigned port1)
{
 struct usb_device *dev;
 struct usb_hcd *usb_hcd = bus_to_hcd(bus);
 unsigned root_hub = 0;
 unsigned raw_port = port1;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 if (!usb_get_hcd(usb_hcd)) {
  kfree(dev);
  return ((void*)0);
 }

 if (usb_hcd->driver->alloc_dev && parent &&
  !usb_hcd->driver->alloc_dev(usb_hcd, dev)) {
  usb_put_hcd(bus_to_hcd(bus));
  kfree(dev);
  return ((void*)0);
 }

 device_initialize(&dev->dev);
 dev->dev.bus = &usb_bus_type;
 dev->dev.type = &usb_device_type;
 dev->dev.groups = usb_device_groups;
 dev->dev.dma_mask = bus->sysdev->dma_mask;
 dev->dev.dma_pfn_offset = bus->sysdev->dma_pfn_offset;
 set_dev_node(&dev->dev, dev_to_node(bus->sysdev));
 dev->state = USB_STATE_ATTACHED;
 dev->lpm_disable_count = 1;
 atomic_set(&dev->urbnum, 0);

 INIT_LIST_HEAD(&dev->ep0.urb_list);
 dev->ep0.desc.bLength = USB_DT_ENDPOINT_SIZE;
 dev->ep0.desc.bDescriptorType = USB_DT_ENDPOINT;

 usb_enable_endpoint(dev, &dev->ep0, 0);
 dev->can_submit = 1;
 if (unlikely(!parent)) {
  dev->devpath[0] = '0';
  dev->route = 0;

  dev->dev.parent = bus->controller;
  device_set_of_node_from_dev(&dev->dev, bus->sysdev);
  dev_set_name(&dev->dev, "usb%d", bus->busnum);
  root_hub = 1;
 } else {

  if (parent->devpath[0] == '0') {
   snprintf(dev->devpath, sizeof dev->devpath,
    "%d", port1);

   dev->route = 0;
  } else {
   snprintf(dev->devpath, sizeof dev->devpath,
    "%s.%d", parent->devpath, port1);

   if (port1 < 15)
    dev->route = parent->route +
     (port1 << ((parent->level - 1)*4));
   else
    dev->route = parent->route +
     (15 << ((parent->level - 1)*4));
  }

  dev->dev.parent = &parent->dev;
  dev_set_name(&dev->dev, "%d-%s", bus->busnum, dev->devpath);

  if (!parent->parent) {

   raw_port = usb_hcd_find_raw_port_number(usb_hcd,
    port1);
  }
  dev->dev.of_node = usb_of_get_device_node(parent, raw_port);


 }

 dev->portnum = port1;
 dev->bus = bus;
 dev->parent = parent;
 INIT_LIST_HEAD(&dev->filelist);
 dev->authorized = usb_dev_authorized(dev, usb_hcd);
 if (!root_hub)
  dev->wusb = usb_bus_is_wusb(bus) ? 1 : 0;

 return dev;
}
