
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device {int dummy; } ;


 int devm_nvmem_match ;
 int devm_nvmem_release ;
 int devres_release (struct device*,int ,int ,struct nvmem_device*) ;

int devm_nvmem_unregister(struct device *dev, struct nvmem_device *nvmem)
{
 return devres_release(dev, devm_nvmem_release, devm_nvmem_match, nvmem);
}
