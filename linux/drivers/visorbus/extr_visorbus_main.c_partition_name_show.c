
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct visor_device* to_visor_device (struct device*) ;

__attribute__((used)) static ssize_t partition_name_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct visor_device *vdev = to_visor_device(dev);

 return sprintf(buf, "%s\n", vdev->name);
}
