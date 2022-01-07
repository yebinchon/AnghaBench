
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct nd_region {int ndr_mappings; int dev; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;
struct nd_label_id {int id; } ;
struct device {int dummy; } ;
typedef scalar_t__ resource_size_t ;
typedef int label_id ;


 int ENXIO ;
 int dev_WARN_ONCE (int *,scalar_t__,char*,scalar_t__,unsigned long long) ;
 int is_memory (struct device*) ;
 int memset (struct nd_label_id*,int ,int) ;
 scalar_t__ nd_pmem_available_dpa (struct nd_region*,struct nd_mapping*,scalar_t__*) ;
 scalar_t__ scan_allocate (struct nd_region*,struct nd_mapping*,struct nd_label_id*,scalar_t__) ;
 int strcat (int ,char*) ;
 struct nd_region* to_nd_region (struct device*) ;

int __reserve_free_pmem(struct device *dev, void *data)
{
 struct nvdimm *nvdimm = data;
 struct nd_region *nd_region;
 struct nd_label_id label_id;
 int i;

 if (!is_memory(dev))
  return 0;

 nd_region = to_nd_region(dev);
 if (nd_region->ndr_mappings == 0)
  return 0;

 memset(&label_id, 0, sizeof(label_id));
 strcat(label_id.id, "pmem-reserve");
 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  resource_size_t n, rem = 0;

  if (nd_mapping->nvdimm != nvdimm)
   continue;

  n = nd_pmem_available_dpa(nd_region, nd_mapping, &rem);
  if (n == 0)
   return 0;
  rem = scan_allocate(nd_region, nd_mapping, &label_id, n);
  dev_WARN_ONCE(&nd_region->dev, rem,
    "pmem reserve underrun: %#llx of %#llx bytes\n",
    (unsigned long long) n - rem,
    (unsigned long long) n);
  return rem ? -ENXIO : 0;
 }

 return 0;
}
