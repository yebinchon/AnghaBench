
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct device {int dummy; } ;


 int nvmem_unregister (struct nvmem_device*) ;

__attribute__((used)) static void devm_nvmem_release(struct device *dev, void *res)
{
 nvmem_unregister(*(struct nvmem_device **)res);
}
