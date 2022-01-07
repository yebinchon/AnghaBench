
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_interface {int dev; scalar_t__ minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_11__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_4__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_8__ {int iSerialNumber; int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct iowarrior {scalar_t__ product_id; int report_size; int present; scalar_t__ minor; int chip_serial; TYPE_5__* interface; int read_queue; TYPE_6__* int_in_endpoint; int int_in_buffer; struct usb_device* udev; int int_in_urb; int int_out_endpoint; int submitted; int write_wait; int write_busy; int read_wait; int overflow_flag; int read_idx; int intr_idx; int mutex; } ;
struct TYPE_13__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_12__ {TYPE_3__* cur_altsetting; } ;
struct TYPE_9__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_2__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IOWARRIOR_MINOR_BASE ;
 int MAX_INTERRUPT_BUFFER ;
 int USB_CTRL_SET_TIMEOUT ;
 scalar_t__ USB_DEVICE_ID_CODEMERCS_IOW56 ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__,int ,int ,scalar_t__) ;
 int init_usb_anchor (int *) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int iowarrior_callback ;
 int iowarrior_class ;
 int iowarrior_delete (struct iowarrior*) ;
 int kmalloc (int,int ) ;
 int kmalloc_array (int,int ,int ) ;
 struct iowarrior* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memset (int ,int,int) ;
 int mutex_init (int *) ;
 int strlen (int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int ) ;
 int usb_endpoint_maxp (TYPE_6__*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,int ,int,int ,struct iowarrior*,int ) ;
 int usb_find_last_int_in_endpoint (struct usb_host_interface*,TYPE_6__**) ;
 int usb_find_last_int_out_endpoint (struct usb_host_interface*,int *) ;
 TYPE_5__* usb_get_intf (struct usb_interface*) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct iowarrior*) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_string (struct usb_device*,int ,int ,int) ;

__attribute__((used)) static int iowarrior_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct iowarrior *dev = ((void*)0);
 struct usb_host_interface *iface_desc;
 int retval = -ENOMEM;
 int res;


 dev = kzalloc(sizeof(struct iowarrior), GFP_KERNEL);
 if (!dev)
  return retval;

 mutex_init(&dev->mutex);

 atomic_set(&dev->intr_idx, 0);
 atomic_set(&dev->read_idx, 0);
 atomic_set(&dev->overflow_flag, 0);
 init_waitqueue_head(&dev->read_wait);
 atomic_set(&dev->write_busy, 0);
 init_waitqueue_head(&dev->write_wait);

 dev->udev = udev;
 dev->interface = usb_get_intf(interface);

 iface_desc = interface->cur_altsetting;
 dev->product_id = le16_to_cpu(udev->descriptor.idProduct);

 init_usb_anchor(&dev->submitted);

 res = usb_find_last_int_in_endpoint(iface_desc, &dev->int_in_endpoint);
 if (res) {
  dev_err(&interface->dev, "no interrupt-in endpoint found\n");
  retval = res;
  goto error;
 }

 if (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56) {
  res = usb_find_last_int_out_endpoint(iface_desc,
    &dev->int_out_endpoint);
  if (res) {
   dev_err(&interface->dev, "no interrupt-out endpoint found\n");
   retval = res;
   goto error;
  }
 }


 dev->report_size = usb_endpoint_maxp(dev->int_in_endpoint);
 if ((dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) &&
     (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56))

  dev->report_size = 7;


 dev->int_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->int_in_urb)
  goto error;
 dev->int_in_buffer = kmalloc(dev->report_size, GFP_KERNEL);
 if (!dev->int_in_buffer)
  goto error;
 usb_fill_int_urb(dev->int_in_urb, dev->udev,
    usb_rcvintpipe(dev->udev,
     dev->int_in_endpoint->bEndpointAddress),
    dev->int_in_buffer, dev->report_size,
    iowarrior_callback, dev,
    dev->int_in_endpoint->bInterval);

 dev->read_queue =
     kmalloc_array(dev->report_size + 1, MAX_INTERRUPT_BUFFER,
     GFP_KERNEL);
 if (!dev->read_queue)
  goto error;

 memset(dev->chip_serial, 0x00, sizeof(dev->chip_serial));
 usb_string(udev, udev->descriptor.iSerialNumber, dev->chip_serial,
     sizeof(dev->chip_serial));
 if (strlen(dev->chip_serial) != 8)
  memset(dev->chip_serial, 0x00, sizeof(dev->chip_serial));


 if (dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) {
     usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
       0x0A,
       USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0,
       0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 }

 dev->present = 1;


 usb_set_intfdata(interface, dev);

 retval = usb_register_dev(interface, &iowarrior_class);
 if (retval) {

  dev_err(&interface->dev, "Not able to get a minor for this device.\n");
  goto error;
 }

 dev->minor = interface->minor;


 dev_info(&interface->dev, "IOWarrior product=0x%x, serial=%s interface=%d "
   "now attached to iowarrior%d\n", dev->product_id, dev->chip_serial,
   iface_desc->desc.bInterfaceNumber, dev->minor - IOWARRIOR_MINOR_BASE);
 return retval;

error:
 iowarrior_delete(dev);
 return retval;
}
