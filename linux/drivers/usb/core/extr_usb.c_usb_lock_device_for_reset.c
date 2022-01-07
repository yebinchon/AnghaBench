
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ condition; } ;
struct usb_device {scalar_t__ state; } ;


 int EBUSY ;
 int EHOSTUNREACH ;
 int EINTR ;
 int ENODEV ;
 unsigned long HZ ;
 scalar_t__ USB_INTERFACE_UNBINDING ;
 scalar_t__ USB_INTERFACE_UNBOUND ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 scalar_t__ USB_STATE_SUSPENDED ;
 unsigned long jiffies ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usb_trylock_device (struct usb_device*) ;

int usb_lock_device_for_reset(struct usb_device *udev,
         const struct usb_interface *iface)
{
 unsigned long jiffies_expire = jiffies + HZ;

 if (udev->state == USB_STATE_NOTATTACHED)
  return -ENODEV;
 if (udev->state == USB_STATE_SUSPENDED)
  return -EHOSTUNREACH;
 if (iface && (iface->condition == USB_INTERFACE_UNBINDING ||
   iface->condition == USB_INTERFACE_UNBOUND))
  return -EINTR;

 while (!usb_trylock_device(udev)) {



  if (time_after(jiffies, jiffies_expire))
   return -EBUSY;

  msleep(15);
  if (udev->state == USB_STATE_NOTATTACHED)
   return -ENODEV;
  if (udev->state == USB_STATE_SUSPENDED)
   return -EHOSTUNREACH;
  if (iface && (iface->condition == USB_INTERFACE_UNBINDING ||
    iface->condition == USB_INTERFACE_UNBOUND))
   return -EINTR;
 }
 return 0;
}
