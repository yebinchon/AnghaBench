
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int textmode; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 char** display_textmodes ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t textmode_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_sevsegdev *mydev = usb_get_intfdata(intf);
 int i;

 buf[0] = 0;

 for (i = 0; i < ARRAY_SIZE(display_textmodes); i++) {
  if (mydev->textmode == i) {
   strcat(buf, " [");
   strcat(buf, display_textmodes[i]);
   strcat(buf, "] ");
  } else {
   strcat(buf, " ");
   strcat(buf, display_textmodes[i]);
   strcat(buf, " ");
  }
 }
 strcat(buf, "\n");


 return strlen(buf);
}
