
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct nvmem_cell* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct nvmem_cell*) ;
 int devm_nvmem_cell_release ;
 int devres_add (struct device*,struct nvmem_cell**) ;
 struct nvmem_cell** devres_alloc (int ,int,int ) ;
 int devres_free (struct nvmem_cell**) ;
 struct nvmem_cell* nvmem_cell_get (struct device*,char const*) ;

struct nvmem_cell *devm_nvmem_cell_get(struct device *dev, const char *id)
{
 struct nvmem_cell **ptr, *cell;

 ptr = devres_alloc(devm_nvmem_cell_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 cell = nvmem_cell_get(dev, id);
 if (!IS_ERR(cell)) {
  *ptr = cell;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return cell;
}
