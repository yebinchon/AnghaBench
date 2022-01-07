
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; int usb_dev; int dev; } ;
struct usb_class_driver {int minor_base; char* name; int * fops; } ;
typedef int name ;
struct TYPE_2__ {int class; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int EXFULL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_USB_MINORS ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int ) ;
 int USB_MAJOR ;
 int dev_dbg (int *,char*,int) ;
 int device_create (int ,int *,int ,struct usb_class_driver*,char*,int ) ;
 int down_write (int *) ;
 int init_usb_class () ;
 int init_usb_class_mutex ;
 int kbasename (char*) ;
 int minor_rwsem ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 int up_write (int *) ;
 TYPE_1__* usb_class ;
 int ** usb_minors ;

int usb_register_dev(struct usb_interface *intf,
       struct usb_class_driver *class_driver)
{
 int retval;
 int minor_base = class_driver->minor_base;
 int minor;
 char name[20];
 if (class_driver->fops == ((void*)0))
  return -EINVAL;
 if (intf->minor >= 0)
  return -EADDRINUSE;

 mutex_lock(&init_usb_class_mutex);
 retval = init_usb_class();
 mutex_unlock(&init_usb_class_mutex);

 if (retval)
  return retval;

 dev_dbg(&intf->dev, "looking for a minor, starting at %d\n", minor_base);

 down_write(&minor_rwsem);
 for (minor = minor_base; minor < MAX_USB_MINORS; ++minor) {
  if (usb_minors[minor])
   continue;

  usb_minors[minor] = class_driver->fops;
  intf->minor = minor;
  break;
 }
 if (intf->minor < 0) {
  up_write(&minor_rwsem);
  return -EXFULL;
 }


 snprintf(name, sizeof(name), class_driver->name, minor - minor_base);
 intf->usb_dev = device_create(usb_class->class, &intf->dev,
          MKDEV(USB_MAJOR, minor), class_driver,
          "%s", kbasename(name));
 if (IS_ERR(intf->usb_dev)) {
  usb_minors[minor] = ((void*)0);
  intf->minor = -1;
  retval = PTR_ERR(intf->usb_dev);
 }
 up_write(&minor_rwsem);
 return retval;
}
