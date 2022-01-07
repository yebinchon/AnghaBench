
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {size_t type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** nvmem_type_str ;
 int sprintf (char*,char*,char*) ;
 struct nvmem_device* to_nvmem_device (struct device*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct nvmem_device *nvmem = to_nvmem_device(dev);

 return sprintf(buf, "%s\n", nvmem_type_str[nvmem->type]);
}
