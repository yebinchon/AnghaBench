
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; } ;
struct nvdimm_drvdata {int dummy; } ;
struct nvdimm_bus {int dev; } ;
struct nd_region {int dev; struct nd_mapping* mapping; } ;
struct nd_mapping {int size; } ;
struct nd_label_id {int id; } ;
struct blk_alloc_info {struct resource* res; int available; struct nd_mapping* nd_mapping; } ;
typedef scalar_t__ resource_size_t ;


 int WARN_ON (int) ;
 int alias_dpa_busy ;
 int device_for_each_child (int *,struct blk_alloc_info*,int ) ;
 int is_nd_blk (int *) ;
 scalar_t__ resource_size (struct resource*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int *) ;

__attribute__((used)) static void space_valid(struct nd_region *nd_region, struct nvdimm_drvdata *ndd,
  struct nd_label_id *label_id, struct resource *prev,
  struct resource *next, struct resource *exist,
  resource_size_t n, struct resource *valid)
{
 bool is_reserve = strcmp(label_id->id, "pmem-reserve") == 0;
 bool is_pmem = strncmp(label_id->id, "pmem", 4) == 0;

 if (valid->start >= valid->end)
  goto invalid;

 if (is_reserve)
  return;

 if (!is_pmem) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[0];
  struct nvdimm_bus *nvdimm_bus;
  struct blk_alloc_info info = {
   .nd_mapping = nd_mapping,
   .available = nd_mapping->size,
   .res = valid,
  };

  WARN_ON(!is_nd_blk(&nd_region->dev));
  nvdimm_bus = walk_to_nvdimm_bus(&nd_region->dev);
  device_for_each_child(&nvdimm_bus->dev, &info, alias_dpa_busy);
  return;
 }


 if (resource_size(valid) < n)
  goto invalid;


 if (!exist)
  return;


 if (valid->start == exist->end + 1
   || valid->end == exist->start - 1)
  return;

 invalid:

 valid->end = valid->start - 1;
}
