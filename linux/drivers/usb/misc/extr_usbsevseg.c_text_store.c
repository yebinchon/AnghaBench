
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {size_t textlength; int text; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int GFP_KERNEL ;
 int memcpy (int ,char const*,size_t) ;
 int memset (int ,int ,int) ;
 size_t my_memlen (char const*,size_t) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int update_display_visual (struct usb_sevsegdev*,int ) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t text_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_sevsegdev *mydev = usb_get_intfdata(intf);
 size_t end = my_memlen(buf, count);

 if (end > sizeof(mydev->text))
  return -EINVAL;

 memset(mydev->text, 0, sizeof(mydev->text));
 mydev->textlength = end;

 if (end > 0)
  memcpy(mydev->text, buf, end);

 update_display_visual(mydev, GFP_KERNEL);
 return count;
}
