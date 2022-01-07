
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; scalar_t__ minor; int * altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int idProduct; int iSerialNumber; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct adu_device {scalar_t__ minor; int serial_number; void* interrupt_out_urb; void* interrupt_out_buffer; void* interrupt_in_urb; void* interrupt_in_buffer; void* read_buffer_secondary; void* read_buffer_primary; int interrupt_out_endpoint; int interrupt_in_endpoint; int write_wait; int read_wait; int udev; int buflock; int mtx; } ;


 scalar_t__ ADU_MINOR_BASE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int adu_class ;
 int adu_delete (struct adu_device*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int ,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 void* kmalloc (int,int ) ;
 struct adu_device* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (void*,char,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_endpoint_maxp (int ) ;
 int usb_find_common_endpoints_reverse (int *,int *,int *,int *,int *) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct adu_device*) ;
 int usb_string (struct usb_device*,int ,int ,int) ;

__attribute__((used)) static int adu_probe(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct adu_device *dev = ((void*)0);
 int retval = -ENOMEM;
 int in_end_size;
 int out_end_size;
 int res;


 dev = kzalloc(sizeof(struct adu_device), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 mutex_init(&dev->mtx);
 spin_lock_init(&dev->buflock);
 dev->udev = usb_get_dev(udev);
 init_waitqueue_head(&dev->read_wait);
 init_waitqueue_head(&dev->write_wait);

 res = usb_find_common_endpoints_reverse(&interface->altsetting[0],
   ((void*)0), ((void*)0),
   &dev->interrupt_in_endpoint,
   &dev->interrupt_out_endpoint);
 if (res) {
  dev_err(&interface->dev, "interrupt endpoints not found\n");
  retval = res;
  goto error;
 }

 in_end_size = usb_endpoint_maxp(dev->interrupt_in_endpoint);
 out_end_size = usb_endpoint_maxp(dev->interrupt_out_endpoint);

 dev->read_buffer_primary = kmalloc((4 * in_end_size), GFP_KERNEL);
 if (!dev->read_buffer_primary)
  goto error;


 memset(dev->read_buffer_primary, 'a', in_end_size);
 memset(dev->read_buffer_primary + in_end_size, 'b', in_end_size);
 memset(dev->read_buffer_primary + (2 * in_end_size), 'c', in_end_size);
 memset(dev->read_buffer_primary + (3 * in_end_size), 'd', in_end_size);

 dev->read_buffer_secondary = kmalloc((4 * in_end_size), GFP_KERNEL);
 if (!dev->read_buffer_secondary)
  goto error;


 memset(dev->read_buffer_secondary, 'e', in_end_size);
 memset(dev->read_buffer_secondary + in_end_size, 'f', in_end_size);
 memset(dev->read_buffer_secondary + (2 * in_end_size), 'g', in_end_size);
 memset(dev->read_buffer_secondary + (3 * in_end_size), 'h', in_end_size);

 dev->interrupt_in_buffer = kmalloc(in_end_size, GFP_KERNEL);
 if (!dev->interrupt_in_buffer)
  goto error;


 memset(dev->interrupt_in_buffer, 'i', in_end_size);

 dev->interrupt_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_in_urb)
  goto error;
 dev->interrupt_out_buffer = kmalloc(out_end_size, GFP_KERNEL);
 if (!dev->interrupt_out_buffer)
  goto error;
 dev->interrupt_out_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_out_urb)
  goto error;

 if (!usb_string(udev, udev->descriptor.iSerialNumber, dev->serial_number,
   sizeof(dev->serial_number))) {
  dev_err(&interface->dev, "Could not retrieve serial number\n");
  retval = -EIO;
  goto error;
 }
 dev_dbg(&interface->dev,"serial_number=%s", dev->serial_number);


 usb_set_intfdata(interface, dev);

 retval = usb_register_dev(interface, &adu_class);

 if (retval) {

  dev_err(&interface->dev, "Not able to get a minor for this device.\n");
  usb_set_intfdata(interface, ((void*)0));
  goto error;
 }

 dev->minor = interface->minor;


 dev_info(&interface->dev, "ADU%d %s now attached to /dev/usb/adutux%d\n",
   le16_to_cpu(udev->descriptor.idProduct), dev->serial_number,
   (dev->minor - ADU_MINOR_BASE));

 return 0;

error:
 adu_delete(dev);
 return retval;
}
