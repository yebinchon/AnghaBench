
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_config {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct nvmem_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct nvmem_device*) ;
 int devm_nvmem_release ;
 int devres_add (struct device*,struct nvmem_device**) ;
 struct nvmem_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct nvmem_device**) ;
 struct nvmem_device* nvmem_register (struct nvmem_config const*) ;

struct nvmem_device *devm_nvmem_register(struct device *dev,
      const struct nvmem_config *config)
{
 struct nvmem_device **ptr, *nvmem;

 ptr = devres_alloc(devm_nvmem_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 nvmem = nvmem_register(config);

 if (!IS_ERR(nvmem)) {
  *ptr = nvmem;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return nvmem;
}
