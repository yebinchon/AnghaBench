
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {struct device dev; scalar_t__ minor; int cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct tower_get_version_reply {int build_no; int minor; scalar_t__ major; } ;
struct lego_usb_tower {scalar_t__ minor; TYPE_2__* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; TYPE_1__* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; int * interrupt_out_urb; int * interrupt_out_buffer; int * interrupt_in_urb; int * interrupt_in_buffer; int * read_buffer; scalar_t__ interrupt_out_busy; scalar_t__ interrupt_in_done; scalar_t__ interrupt_in_running; int write_wait; int read_wait; int read_last_arrival; int packet_timeout_jiffies; int read_buffer_lock; scalar_t__ read_packet_length; scalar_t__ read_buffer_length; scalar_t__ disconnected; scalar_t__ open_count; int udev; int lock; } ;
struct TYPE_5__ {scalar_t__ bInterval; } ;
struct TYPE_4__ {scalar_t__ bInterval; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LEGO_USB_TOWER_MINOR_BASE ;
 int LEGO_USB_TOWER_REQUEST_GET_VERSION ;
 int USB_DIR_IN ;
 int USB_MAJOR ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,scalar_t__,int ,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ interrupt_in_interval ;
 scalar_t__ interrupt_out_interval ;
 int jiffies ;
 int kfree (struct tower_get_version_reply*) ;
 void* kmalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_init (int *) ;
 int packet_timeout ;
 int read_buffer_size ;
 int spin_lock_init (int *) ;
 int tower_class ;
 int tower_delete (struct lego_usb_tower*) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,struct tower_get_version_reply*,int,int) ;
 int usb_endpoint_maxp (TYPE_1__*) ;
 int usb_find_common_endpoints_reverse (int ,int *,int *,TYPE_1__**,TYPE_2__**) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct lego_usb_tower*) ;
 int write_buffer_size ;

__attribute__((used)) static int tower_probe (struct usb_interface *interface, const struct usb_device_id *id)
{
 struct device *idev = &interface->dev;
 struct usb_device *udev = interface_to_usbdev(interface);
 struct lego_usb_tower *dev = ((void*)0);
 struct tower_get_version_reply *get_version_reply = ((void*)0);
 int retval = -ENOMEM;
 int result;



 dev = kmalloc (sizeof(struct lego_usb_tower), GFP_KERNEL);

 if (!dev)
  goto exit;

 mutex_init(&dev->lock);

 dev->udev = usb_get_dev(udev);
 dev->open_count = 0;
 dev->disconnected = 0;

 dev->read_buffer = ((void*)0);
 dev->read_buffer_length = 0;
 dev->read_packet_length = 0;
 spin_lock_init (&dev->read_buffer_lock);
 dev->packet_timeout_jiffies = msecs_to_jiffies(packet_timeout);
 dev->read_last_arrival = jiffies;

 init_waitqueue_head (&dev->read_wait);
 init_waitqueue_head (&dev->write_wait);

 dev->interrupt_in_buffer = ((void*)0);
 dev->interrupt_in_endpoint = ((void*)0);
 dev->interrupt_in_urb = ((void*)0);
 dev->interrupt_in_running = 0;
 dev->interrupt_in_done = 0;

 dev->interrupt_out_buffer = ((void*)0);
 dev->interrupt_out_endpoint = ((void*)0);
 dev->interrupt_out_urb = ((void*)0);
 dev->interrupt_out_busy = 0;

 result = usb_find_common_endpoints_reverse(interface->cur_altsetting,
   ((void*)0), ((void*)0),
   &dev->interrupt_in_endpoint,
   &dev->interrupt_out_endpoint);
 if (result) {
  dev_err(idev, "interrupt endpoints not found\n");
  retval = result;
  goto error;
 }

 dev->read_buffer = kmalloc (read_buffer_size, GFP_KERNEL);
 if (!dev->read_buffer)
  goto error;
 dev->interrupt_in_buffer = kmalloc (usb_endpoint_maxp(dev->interrupt_in_endpoint), GFP_KERNEL);
 if (!dev->interrupt_in_buffer)
  goto error;
 dev->interrupt_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_in_urb)
  goto error;
 dev->interrupt_out_buffer = kmalloc (write_buffer_size, GFP_KERNEL);
 if (!dev->interrupt_out_buffer)
  goto error;
 dev->interrupt_out_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->interrupt_out_urb)
  goto error;
 dev->interrupt_in_interval = interrupt_in_interval ? interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
 dev->interrupt_out_interval = interrupt_out_interval ? interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;

 get_version_reply = kmalloc(sizeof(*get_version_reply), GFP_KERNEL);

 if (!get_version_reply) {
  retval = -ENOMEM;
  goto error;
 }


 result = usb_control_msg (udev,
      usb_rcvctrlpipe(udev, 0),
      LEGO_USB_TOWER_REQUEST_GET_VERSION,
      USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
      0,
      0,
      get_version_reply,
      sizeof(*get_version_reply),
      1000);
 if (result != sizeof(*get_version_reply)) {
  if (result >= 0)
   result = -EIO;
  dev_err(idev, "get version request failed: %d\n", result);
  retval = result;
  goto error;
 }
 dev_info(&interface->dev,
   "LEGO USB Tower firmware version is %d.%d build %d\n",
   get_version_reply->major,
   get_version_reply->minor,
   le16_to_cpu(get_version_reply->build_no));


 usb_set_intfdata (interface, dev);

 retval = usb_register_dev (interface, &tower_class);

 if (retval) {

  dev_err(idev, "Not able to get a minor for this device.\n");
  goto error;
 }
 dev->minor = interface->minor;


 dev_info(&interface->dev, "LEGO USB Tower #%d now attached to major "
   "%d minor %d\n", (dev->minor - LEGO_USB_TOWER_MINOR_BASE),
   USB_MAJOR, dev->minor);

exit:
 kfree(get_version_reply);
 return retval;

error:
 kfree(get_version_reply);
 tower_delete(dev);
 return retval;
}
