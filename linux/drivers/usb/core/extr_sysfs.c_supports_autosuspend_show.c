
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ supports_autosuspend; } ;


 int EINTR ;
 int device_lock_interruptible (struct device*) ;
 int device_unlock (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_usb_driver (int ) ;

__attribute__((used)) static ssize_t supports_autosuspend_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int s;

 s = device_lock_interruptible(dev);
 if (s < 0)
  return -EINTR;

 s = (!dev->driver || to_usb_driver(dev->driver)->supports_autosuspend);
 device_unlock(dev);

 return sprintf(buf, "%u\n", s);
}
