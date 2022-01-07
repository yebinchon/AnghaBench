
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_lcd {int kref; TYPE_2__* udev; int bulk_out_endpointAddr; int bulk_in_buffer; int bulk_in_size; int bulk_in_endpointAddr; struct usb_interface* interface; int submitted; int io_rwsem; int limit_sem; } ;
struct usb_interface {int minor; int dev; int cur_altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bcdDevice; int idProduct; } ;
struct TYPE_4__ {int devnum; TYPE_1__ descriptor; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_LCD_CONCURRENT_WRITES ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,...) ;
 int dev_warn (int *,char*) ;
 int init_rwsem (int *) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int ,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct usb_lcd* kzalloc (int,int ) ;
 int lcd_class ;
 int lcd_delete ;
 int le16_to_cpu (int ) ;
 int sema_init (int *,int ) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_find_common_endpoints (int ,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int *,int *) ;
 TYPE_2__* usb_get_dev (int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_lcd*) ;

__attribute__((used)) static int lcd_probe(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 struct usb_lcd *dev = ((void*)0);
 struct usb_endpoint_descriptor *bulk_in, *bulk_out;
 int i;
 int retval;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 kref_init(&dev->kref);
 sema_init(&dev->limit_sem, USB_LCD_CONCURRENT_WRITES);
 init_rwsem(&dev->io_rwsem);
 init_usb_anchor(&dev->submitted);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = interface;

 if (le16_to_cpu(dev->udev->descriptor.idProduct) != 0x0001) {
  dev_warn(&interface->dev, "USBLCD model not supported.\n");
  retval = -ENODEV;
  goto error;
 }



 retval = usb_find_common_endpoints(interface->cur_altsetting,
   &bulk_in, &bulk_out, ((void*)0), ((void*)0));
 if (retval) {
  dev_err(&interface->dev,
   "Could not find both bulk-in and bulk-out endpoints\n");
  goto error;
 }

 dev->bulk_in_size = usb_endpoint_maxp(bulk_in);
 dev->bulk_in_endpointAddr = bulk_in->bEndpointAddress;
 dev->bulk_in_buffer = kmalloc(dev->bulk_in_size, GFP_KERNEL);
 if (!dev->bulk_in_buffer) {
  retval = -ENOMEM;
  goto error;
 }

 dev->bulk_out_endpointAddr = bulk_out->bEndpointAddress;


 usb_set_intfdata(interface, dev);


 retval = usb_register_dev(interface, &lcd_class);
 if (retval) {

  dev_err(&interface->dev,
   "Not able to get a minor for this device.\n");
  goto error;
 }

 i = le16_to_cpu(dev->udev->descriptor.bcdDevice);

 dev_info(&interface->dev, "USBLCD Version %1d%1d.%1d%1d found "
   "at address %d\n", (i & 0xF000)>>12, (i & 0xF00)>>8,
   (i & 0xF0)>>4, (i & 0xF), dev->udev->devnum);


 dev_info(&interface->dev, "USB LCD device now attached to USBLCD-%d\n",
   interface->minor);
 return 0;

error:
 kref_put(&dev->kref, lcd_delete);
 return retval;
}
