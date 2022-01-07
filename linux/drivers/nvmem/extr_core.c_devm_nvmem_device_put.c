
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_nvmem_device_match ;
 int devm_nvmem_device_release ;
 int devres_release (struct device*,int ,int ,struct nvmem_device*) ;

void devm_nvmem_device_put(struct device *dev, struct nvmem_device *nvmem)
{
 int ret;

 ret = devres_release(dev, devm_nvmem_device_release,
        devm_nvmem_device_match, nvmem);

 WARN_ON(ret);
}
