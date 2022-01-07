
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {scalar_t__ setable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct wmi_device* dev_to_wdev (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t setable_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct wmi_device *wdev = dev_to_wdev(dev);

 return sprintf(buf, "%d\n", (int)wdev->setable);
}
