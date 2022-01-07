
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_of_node (int *,struct device_node*) ;
 int nvmem_bus_type ;
 struct nvmem_device* to_nvmem_device (struct device*) ;

__attribute__((used)) static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
{
 struct device *d;

 if (!nvmem_np)
  return ((void*)0);

 d = bus_find_device_by_of_node(&nvmem_bus_type, nvmem_np);

 if (!d)
  return ((void*)0);

 return to_nvmem_device(d);
}
