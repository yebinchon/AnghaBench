
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int textmode; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int GFP_KERNEL ;
 int display_textmodes ;
 int sysfs_match_string (int ,char const*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int update_display_visual (struct usb_sevsegdev*,int ) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t textmode_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_sevsegdev *mydev = usb_get_intfdata(intf);
 int i;

 i = sysfs_match_string(display_textmodes, buf);
 if (i < 0)
  return i;

 mydev->textmode = i;
 update_display_visual(mydev, GFP_KERNEL);
 return count;
}
