
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* altsetting; } ;
struct usb_idmouse {int bulk_in_size; int present; int bulk_in_buffer; int bulk_in_endpointAddr; int orig_bi_size; struct usb_interface* interface; struct usb_device* udev; int lock; } ;
struct TYPE_2__ {int bInterfaceClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;


 int DRIVER_DESC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMGSIZE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int idmouse_class ;
 int idmouse_delete (struct usb_idmouse*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (scalar_t__,int ) ;
 struct usb_idmouse* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_find_bulk_in_endpoint (struct usb_host_interface*,struct usb_endpoint_descriptor**) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_idmouse*) ;

__attribute__((used)) static int idmouse_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_idmouse *dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int result;


 iface_desc = &interface->altsetting[0];
 if (iface_desc->desc.bInterfaceClass != 0x0A)
  return -ENODEV;

 if (iface_desc->desc.bNumEndpoints < 1)
  return -ENODEV;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 mutex_init(&dev->lock);
 dev->udev = udev;
 dev->interface = interface;


 result = usb_find_bulk_in_endpoint(iface_desc, &endpoint);
 if (result) {
  dev_err(&interface->dev, "Unable to find bulk-in endpoint.\n");
  idmouse_delete(dev);
  return result;
 }

 dev->orig_bi_size = usb_endpoint_maxp(endpoint);
 dev->bulk_in_size = 0x200;
 dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
 dev->bulk_in_buffer = kmalloc(IMGSIZE + dev->bulk_in_size, GFP_KERNEL);
 if (!dev->bulk_in_buffer) {
  idmouse_delete(dev);
  return -ENOMEM;
 }


 dev->present = 1;


 usb_set_intfdata(interface, dev);
 result = usb_register_dev(interface, &idmouse_class);
 if (result) {

  dev_err(&interface->dev, "Unable to allocate minor number.\n");
  usb_set_intfdata(interface, ((void*)0));
  idmouse_delete(dev);
  return result;
 }


 dev_info(&interface->dev,"%s now attached\n",DRIVER_DESC);

 return 0;
}
