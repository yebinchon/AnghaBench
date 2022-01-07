
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct ftdi_private {int latency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 scalar_t__ kstrtou8 (char const*,int,int *) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int write_latency_timer (struct usb_serial_port*) ;

__attribute__((used)) static ssize_t latency_timer_store(struct device *dev,
       struct device_attribute *attr,
       const char *valbuf, size_t count)
{
 struct usb_serial_port *port = to_usb_serial_port(dev);
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 u8 v;
 int rv;

 if (kstrtou8(valbuf, 10, &v))
  return -EINVAL;

 priv->latency = v;
 rv = write_latency_timer(port);
 if (rv < 0)
  return -EIO;
 return count;
}
