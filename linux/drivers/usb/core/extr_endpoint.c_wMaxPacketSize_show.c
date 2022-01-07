
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_device {int desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ep_device* to_ep_device (struct device*) ;
 int usb_endpoint_maxp (int ) ;

__attribute__((used)) static ssize_t wMaxPacketSize_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct ep_device *ep = to_ep_device(dev);
 return sprintf(buf, "%04x\n", usb_endpoint_maxp(ep->desc));
}
