
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_nvmem_cell_match ;
 int devm_nvmem_cell_release ;
 int devres_release (struct device*,int ,int ,struct nvmem_cell*) ;

void devm_nvmem_cell_put(struct device *dev, struct nvmem_cell *cell)
{
 int ret;

 ret = devres_release(dev, devm_nvmem_cell_release,
    devm_nvmem_cell_match, cell);

 WARN_ON(ret);
}
