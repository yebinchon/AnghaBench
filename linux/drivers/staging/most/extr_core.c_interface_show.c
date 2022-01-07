
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {int interface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*) ;
 struct most_interface* to_most_interface (struct device*) ;

__attribute__((used)) static ssize_t interface_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct most_interface *iface = to_most_interface(dev);

 switch (iface->interface) {
 case 133:
  return snprintf(buf, PAGE_SIZE, "loopback\n");
 case 135:
  return snprintf(buf, PAGE_SIZE, "i2c\n");
 case 134:
  return snprintf(buf, PAGE_SIZE, "i2s\n");
 case 129:
  return snprintf(buf, PAGE_SIZE, "tsi\n");
 case 136:
  return snprintf(buf, PAGE_SIZE, "hbi\n");
 case 132:
  return snprintf(buf, PAGE_SIZE, "mlb_dim\n");
 case 131:
  return snprintf(buf, PAGE_SIZE, "mlb_dim2\n");
 case 128:
  return snprintf(buf, PAGE_SIZE, "usb\n");
 case 130:
  return snprintf(buf, PAGE_SIZE, "pcie\n");
 }
 return snprintf(buf, PAGE_SIZE, "unknown\n");
}
