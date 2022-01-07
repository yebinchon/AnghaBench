
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct tower_reset_reply {int dummy; } ;
struct lego_usb_tower {int open_count; int interrupt_in_running; int lock; TYPE_1__* udev; int interrupt_in_urb; scalar_t__ interrupt_in_done; int interrupt_in_interval; TYPE_4__* interrupt_in_endpoint; int interrupt_in_buffer; scalar_t__ read_packet_length; scalar_t__ read_buffer_length; } ;
struct inode {int dummy; } ;
struct file {struct lego_usb_tower* private_data; } ;
struct TYPE_7__ {int bEndpointAddress; } ;
struct TYPE_6__ {int dev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int LEGO_USB_TOWER_REQUEST_RESET ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,...) ;
 int iminor (struct inode*) ;
 int kfree (struct tower_reset_reply*) ;
 struct tower_reset_reply* kmalloc (int,int ) ;
 int mb () ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pr_err (char*,int) ;
 int tower_driver ;
 int tower_interrupt_in_callback ;
 int usb_control_msg (TYPE_1__*,int ,int ,int,int ,int ,struct tower_reset_reply*,int,int) ;
 int usb_endpoint_maxp (TYPE_4__*) ;
 int usb_fill_int_urb (int ,TYPE_1__*,int ,int ,int ,int ,struct lego_usb_tower*,int ) ;
 struct usb_interface* usb_find_interface (int *,int) ;
 struct lego_usb_tower* usb_get_intfdata (struct usb_interface*) ;
 int usb_rcvctrlpipe (TYPE_1__*,int ) ;
 int usb_rcvintpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int tower_open (struct inode *inode, struct file *file)
{
 struct lego_usb_tower *dev = ((void*)0);
 int subminor;
 int retval = 0;
 struct usb_interface *interface;
 struct tower_reset_reply *reset_reply;
 int result;

 reset_reply = kmalloc(sizeof(*reset_reply), GFP_KERNEL);

 if (!reset_reply) {
  retval = -ENOMEM;
  goto exit;
 }

 nonseekable_open(inode, file);
 subminor = iminor(inode);

 interface = usb_find_interface (&tower_driver, subminor);

 if (!interface) {
  pr_err("error, can't find device for minor %d\n", subminor);
  retval = -ENODEV;
  goto exit;
 }

 dev = usb_get_intfdata(interface);
 if (!dev) {
  retval = -ENODEV;
  goto exit;
 }


 if (mutex_lock_interruptible(&dev->lock)) {
         retval = -ERESTARTSYS;
  goto exit;
 }



 if (dev->open_count) {
  retval = -EBUSY;
  goto unlock_exit;
 }


 result = usb_control_msg (dev->udev,
      usb_rcvctrlpipe(dev->udev, 0),
      LEGO_USB_TOWER_REQUEST_RESET,
      USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
      0,
      0,
      reset_reply,
      sizeof(*reset_reply),
      1000);
 if (result < 0) {
  dev_err(&dev->udev->dev,
   "LEGO USB Tower reset control request failed\n");
  retval = result;
  goto unlock_exit;
 }


 dev->read_buffer_length = 0;
 dev->read_packet_length = 0;
 usb_fill_int_urb (dev->interrupt_in_urb,
     dev->udev,
     usb_rcvintpipe(dev->udev, dev->interrupt_in_endpoint->bEndpointAddress),
     dev->interrupt_in_buffer,
     usb_endpoint_maxp(dev->interrupt_in_endpoint),
     tower_interrupt_in_callback,
     dev,
     dev->interrupt_in_interval);

 dev->interrupt_in_running = 1;
 dev->interrupt_in_done = 0;
 mb();

 retval = usb_submit_urb (dev->interrupt_in_urb, GFP_KERNEL);
 if (retval) {
  dev_err(&dev->udev->dev,
   "Couldn't submit interrupt_in_urb %d\n", retval);
  dev->interrupt_in_running = 0;
  goto unlock_exit;
 }


 file->private_data = dev;

 dev->open_count = 1;

unlock_exit:
 mutex_unlock(&dev->lock);

exit:
 kfree(reset_reply);
 return retval;
}
