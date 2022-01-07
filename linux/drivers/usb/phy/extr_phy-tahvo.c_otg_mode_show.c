
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tahvo_usb {int tahvo_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;


 struct tahvo_usb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t otg_mode_show(struct device *device,
        struct device_attribute *attr, char *buf)
{
 struct tahvo_usb *tu = dev_get_drvdata(device);

 switch (tu->tahvo_mode) {
 case 129:
  return sprintf(buf, "host\n");
 case 128:
  return sprintf(buf, "peripheral\n");
 }

 return -EINVAL;
}
