
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct nvmem_cell* ERR_PTR (int ) ;
 int IS_ERR (struct nvmem_cell*) ;
 int PTR_ERR (struct nvmem_cell*) ;
 struct nvmem_cell* nvmem_cell_get_from_lookup (struct device*,char const*) ;
 struct nvmem_cell* of_nvmem_cell_get (scalar_t__,char const*) ;

struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *id)
{
 struct nvmem_cell *cell;

 if (dev->of_node) {
  cell = of_nvmem_cell_get(dev->of_node, id);
  if (!IS_ERR(cell) || PTR_ERR(cell) == -EPROBE_DEFER)
   return cell;
 }


 if (!id)
  return ERR_PTR(-EINVAL);

 return nvmem_cell_get_from_lookup(dev, id);
}
