
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {char* text; int textlength; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int ,char*,char*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t text_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_sevsegdev *mydev = usb_get_intfdata(intf);

 return snprintf(buf, mydev->textlength, "%s\n", mydev->text);
}
