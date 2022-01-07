
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void nvmem_cell ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_nvmem_cell_match(struct device *dev, void *res, void *data)
{
 struct nvmem_cell **c = res;

 if (WARN_ON(!c || !*c))
  return 0;

 return *c == data;
}
