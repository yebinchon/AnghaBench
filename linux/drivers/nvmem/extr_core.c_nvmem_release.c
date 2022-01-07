
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int id; } ;
struct device {int dummy; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct nvmem_device*) ;
 int nvmem_ida ;
 struct nvmem_device* to_nvmem_device (struct device*) ;

__attribute__((used)) static void nvmem_release(struct device *dev)
{
 struct nvmem_device *nvmem = to_nvmem_device(dev);

 ida_simple_remove(&nvmem_ida, nvmem->id);
 kfree(nvmem);
}
