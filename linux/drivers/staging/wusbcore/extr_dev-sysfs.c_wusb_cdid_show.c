
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct wusb_dev {TYPE_1__ cdid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int sprintf (char*,char*,int ) ;
 int to_usb_device (struct device*) ;
 struct wusb_dev* wusb_dev_get_by_usb_dev (int ) ;
 int wusb_dev_put (struct wusb_dev*) ;

__attribute__((used)) static ssize_t wusb_cdid_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 ssize_t result;
 struct wusb_dev *wusb_dev;

 wusb_dev = wusb_dev_get_by_usb_dev(to_usb_device(dev));
 if (wusb_dev == ((void*)0))
  return -ENODEV;
 result = sprintf(buf, "%16ph\n", wusb_dev->cdid.data);
 wusb_dev_put(wusb_dev);
 return result;
}
