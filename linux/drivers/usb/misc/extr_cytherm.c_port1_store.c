
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_cytherm {TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int WRITE_PORT ;
 int dev_dbg (int *,char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int simple_strtoul (char const*,int *,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_cytherm* usb_get_intfdata (struct usb_interface*) ;
 int vendor_command (TYPE_1__*,int ,int,int,unsigned char*,int) ;

__attribute__((used)) static ssize_t port1_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_cytherm *cytherm = usb_get_intfdata(intf);

 unsigned char *buffer;
 int retval;
 int tmp;

 buffer = kmalloc(8, GFP_KERNEL);
 if (!buffer)
  return 0;

 tmp = simple_strtoul(buf, ((void*)0), 10);

 if (tmp > 0xFF)
  tmp = 0xFF;
 else if (tmp < 0)
  tmp = 0;

 retval = vendor_command(cytherm->udev, WRITE_PORT, 1,
    tmp, buffer, 8);
 if (retval)
  dev_dbg(&cytherm->udev->dev, "retval = %d\n", retval);

 kfree(buffer);

 return count;
}
