
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {char* description; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct most_interface* to_most_interface (struct device*) ;

__attribute__((used)) static ssize_t description_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct most_interface *iface = to_most_interface(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n", iface->description);
}
