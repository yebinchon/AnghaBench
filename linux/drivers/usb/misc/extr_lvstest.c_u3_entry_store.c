
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct lvs_rh {int portnum; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int USB_PORT_FEAT_SUSPEND ;
 struct usb_device* create_lvs_device (struct usb_interface*) ;
 int destroy_lvs_device (struct usb_device*) ;
 int dev_err (struct device*,char*,...) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int lvs_rh_set_port_feature (struct usb_device*,int ,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct lvs_rh* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t u3_entry_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_device *hdev = interface_to_usbdev(intf);
 struct lvs_rh *lvs = usb_get_intfdata(intf);
 struct usb_device *udev;
 int ret;

 udev = create_lvs_device(intf);
 if (!udev) {
  dev_err(dev, "failed to create lvs device\n");
  return -ENOMEM;
 }

 ret = lvs_rh_set_port_feature(hdev, lvs->portnum,
   USB_PORT_FEAT_SUSPEND);
 if (ret < 0)
  dev_err(dev, "can't issue U3 entry %d\n", ret);

 destroy_lvs_device(udev);

 if (ret < 0)
  return ret;

 return count;
}
