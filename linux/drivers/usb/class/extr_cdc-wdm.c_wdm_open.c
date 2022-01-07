
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int count; struct usb_interface* intf; int (* manage_power ) (struct usb_interface*,int) ;int wlock; int validity; scalar_t__ rerr; scalar_t__ werr; int flags; } ;
struct usb_interface {int dev; } ;
struct inode {int dummy; } ;
struct file {struct wdm_device* private_data; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int WDM_DISCONNECTING ;
 int dev_err (int *,char*,int) ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct usb_interface*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_autopm_get_interface (struct usb_interface*) ;
 int usb_autopm_put_interface (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;
 int usb_translate_errors (int) ;
 struct wdm_device* wdm_find_device_by_minor (int) ;
 int wdm_mutex ;

__attribute__((used)) static int wdm_open(struct inode *inode, struct file *file)
{
 int minor = iminor(inode);
 int rv = -ENODEV;
 struct usb_interface *intf;
 struct wdm_device *desc;

 mutex_lock(&wdm_mutex);
 desc = wdm_find_device_by_minor(minor);
 if (!desc)
  goto out;

 intf = desc->intf;
 if (test_bit(WDM_DISCONNECTING, &desc->flags))
  goto out;
 file->private_data = desc;

 rv = usb_autopm_get_interface(desc->intf);
 if (rv < 0) {
  dev_err(&desc->intf->dev, "Error autopm - %d\n", rv);
  goto out;
 }


 mutex_lock(&desc->wlock);
 if (!desc->count++) {
  desc->werr = 0;
  desc->rerr = 0;
  rv = usb_submit_urb(desc->validity, GFP_KERNEL);
  if (rv < 0) {
   desc->count--;
   dev_err(&desc->intf->dev,
    "Error submitting int urb - %d\n", rv);
   rv = usb_translate_errors(rv);
  }
 } else {
  rv = 0;
 }
 mutex_unlock(&desc->wlock);
 if (desc->count == 1)
  desc->manage_power(intf, 1);
 usb_autopm_put_interface(desc->intf);
out:
 mutex_unlock(&wdm_mutex);
 return rv;
}
