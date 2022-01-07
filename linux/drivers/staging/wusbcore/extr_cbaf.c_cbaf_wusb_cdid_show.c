
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct cbaf {TYPE_1__ cdid; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cbaf_wusb_cdid_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct usb_interface *iface = to_usb_interface(dev);
 struct cbaf *cbaf = usb_get_intfdata(iface);

 return sprintf(buf, "%16ph\n", cbaf->cdid.data);
}
