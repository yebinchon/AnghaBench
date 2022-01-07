
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;


 int nvmem_cell_put (struct nvmem_cell*) ;

__attribute__((used)) static void devm_nvmem_cell_release(struct device *dev, void *res)
{
 nvmem_cell_put(*(struct nvmem_cell **)res);
}
