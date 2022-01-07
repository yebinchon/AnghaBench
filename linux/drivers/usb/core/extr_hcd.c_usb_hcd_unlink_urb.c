
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int dev; int bus; } ;
struct urb {struct usb_device* dev; int use_count; } ;


 int EBUSY ;
 int EIDRM ;
 int EINPROGRESS ;
 scalar_t__ atomic_read (int *) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int dev_dbg (int *,char*,struct urb*,int) ;
 int hcd_urb_unlink_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink1 (struct usb_hcd*,struct urb*,int) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;

int usb_hcd_unlink_urb (struct urb *urb, int status)
{
 struct usb_hcd *hcd;
 struct usb_device *udev = urb->dev;
 int retval = -EIDRM;
 unsigned long flags;






 spin_lock_irqsave(&hcd_urb_unlink_lock, flags);
 if (atomic_read(&urb->use_count) > 0) {
  retval = 0;
  usb_get_dev(udev);
 }
 spin_unlock_irqrestore(&hcd_urb_unlink_lock, flags);
 if (retval == 0) {
  hcd = bus_to_hcd(urb->dev->bus);
  retval = unlink1(hcd, urb, status);
  if (retval == 0)
   retval = -EINPROGRESS;
  else if (retval != -EIDRM && retval != -EBUSY)
   dev_dbg(&udev->dev, "hcd_unlink_urb %pK fail %d\n",
     urb, retval);
  usb_put_dev(udev);
 }
 return retval;
}
