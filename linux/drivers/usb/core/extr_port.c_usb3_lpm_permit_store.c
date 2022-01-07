
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int usb3_lpm_u1_permit; int usb3_lpm_u2_permit; struct usb_device* child; } ;
struct usb_hcd {int bandwidth_mutex; } ;
struct usb_device {int bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int strncmp (char const*,char*,int) ;
 struct usb_port* to_usb_port (struct device*) ;
 int usb_disable_lpm (struct usb_device*) ;
 int usb_enable_lpm (struct usb_device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static ssize_t usb3_lpm_permit_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct usb_port *port_dev = to_usb_port(dev);
 struct usb_device *udev = port_dev->child;
 struct usb_hcd *hcd;

 if (!strncmp(buf, "u1_u2", 5)) {
  port_dev->usb3_lpm_u1_permit = 1;
  port_dev->usb3_lpm_u2_permit = 1;

 } else if (!strncmp(buf, "u1", 2)) {
  port_dev->usb3_lpm_u1_permit = 1;
  port_dev->usb3_lpm_u2_permit = 0;

 } else if (!strncmp(buf, "u2", 2)) {
  port_dev->usb3_lpm_u1_permit = 0;
  port_dev->usb3_lpm_u2_permit = 1;

 } else if (!strncmp(buf, "0", 1)) {
  port_dev->usb3_lpm_u1_permit = 0;
  port_dev->usb3_lpm_u2_permit = 0;
 } else
  return -EINVAL;




 if (udev) {
  hcd = bus_to_hcd(udev->bus);
  if (!hcd)
   return -EINVAL;
  usb_lock_device(udev);
  mutex_lock(hcd->bandwidth_mutex);
  if (!usb_disable_lpm(udev))
   usb_enable_lpm(udev);
  mutex_unlock(hcd->bandwidth_mutex);
  usb_unlock_device(udev);
 }

 return count;
}
