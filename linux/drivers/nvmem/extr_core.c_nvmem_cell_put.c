
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_cell {struct nvmem_device* nvmem; } ;


 int __nvmem_device_put (struct nvmem_device*) ;

void nvmem_cell_put(struct nvmem_cell *cell)
{
 struct nvmem_device *nvmem = cell->nvmem;

 __nvmem_device_put(nvmem);
}
