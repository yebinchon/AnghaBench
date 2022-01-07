
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_name (int *,int *,char const*) ;
 int nvmem_bus_type ;
 struct nvmem_device* to_nvmem_device (struct device*) ;

__attribute__((used)) static struct nvmem_device *nvmem_find(const char *name)
{
 struct device *d;

 d = bus_find_device_by_name(&nvmem_bus_type, ((void*)0), name);

 if (!d)
  return ((void*)0);

 return to_nvmem_device(d);
}
