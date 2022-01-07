
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {scalar_t__* device_id_string; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,scalar_t__*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usblp* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t ieee1284_id_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usblp *usblp = usb_get_intfdata(intf);

 if (usblp->device_id_string[0] == 0 &&
     usblp->device_id_string[1] == 0)
  return 0;

 return sprintf(buf, "%s", usblp->device_id_string+2);
}
