
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tahvo_usb {scalar_t__ vbus_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct tahvo_usb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t vbus_show(struct device *device,
          struct device_attribute *attr, char *buf)
{
 struct tahvo_usb *tu = dev_get_drvdata(device);
 return sprintf(buf, "%s\n", tu->vbus_state ? "on" : "off");
}
