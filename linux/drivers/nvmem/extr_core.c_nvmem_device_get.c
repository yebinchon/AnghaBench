
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int EPROBE_DEFER ;
 int IS_ERR (struct nvmem_device*) ;
 int PTR_ERR (struct nvmem_device*) ;
 struct nvmem_device* __nvmem_device_get (int *,char const*) ;
 struct nvmem_device* of_nvmem_device_get (scalar_t__,char const*) ;

struct nvmem_device *nvmem_device_get(struct device *dev, const char *dev_name)
{
 if (dev->of_node) {
  struct nvmem_device *nvmem;

  nvmem = of_nvmem_device_get(dev->of_node, dev_name);

  if (!IS_ERR(nvmem) || PTR_ERR(nvmem) == -EPROBE_DEFER)
   return nvmem;

 }

 return __nvmem_device_get(((void*)0), dev_name);
}
