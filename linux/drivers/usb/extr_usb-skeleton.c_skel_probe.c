
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int kref; int bulk_out_endpointAddr; int bulk_in_urb; int bulk_in_buffer; int bulk_in_size; int bulk_in_endpointAddr; int interface; int udev; int bulk_in_wait; int submitted; int err_lock; int io_mutex; int limit_sem; } ;
struct usb_interface {int minor; int dev; int cur_altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WRITES_IN_FLIGHT ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int init_usb_anchor (int *) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int ,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct usb_skel* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sema_init (int *,int ) ;
 int skel_class ;
 int skel_delete ;
 int spin_lock_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_find_common_endpoints (int ,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int *,int *) ;
 int usb_get_dev (int ) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_skel*) ;

__attribute__((used)) static int skel_probe(struct usb_interface *interface,
        const struct usb_device_id *id)
{
 struct usb_skel *dev;
 struct usb_endpoint_descriptor *bulk_in, *bulk_out;
 int retval;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 kref_init(&dev->kref);
 sema_init(&dev->limit_sem, WRITES_IN_FLIGHT);
 mutex_init(&dev->io_mutex);
 spin_lock_init(&dev->err_lock);
 init_usb_anchor(&dev->submitted);
 init_waitqueue_head(&dev->bulk_in_wait);

 dev->udev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = usb_get_intf(interface);



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
 dev->bulk_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->bulk_in_urb) {
  retval = -ENOMEM;
  goto error;
 }

 dev->bulk_out_endpointAddr = bulk_out->bEndpointAddress;


 usb_set_intfdata(interface, dev);


 retval = usb_register_dev(interface, &skel_class);
 if (retval) {

  dev_err(&interface->dev,
   "Not able to get a minor for this device.\n");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }


 dev_info(&interface->dev,
   "USB Skeleton device now attached to USBSkel-%d",
   interface->minor);
 return 0;

error:

 kref_put(&dev->kref, skel_delete);

 return retval;
}
