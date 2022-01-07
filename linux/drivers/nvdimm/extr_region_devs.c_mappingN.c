
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dev; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {int position; int size; int start; struct nvdimm* nvdimm; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 char* dev_name (int *) ;
 int sprintf (char*,char*,char*,int ,int ,int ) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t mappingN(struct device *dev, char *buf, int n)
{
 struct nd_region *nd_region = to_nd_region(dev);
 struct nd_mapping *nd_mapping;
 struct nvdimm *nvdimm;

 if (n >= nd_region->ndr_mappings)
  return -ENXIO;
 nd_mapping = &nd_region->mapping[n];
 nvdimm = nd_mapping->nvdimm;

 return sprintf(buf, "%s,%llu,%llu,%d\n", dev_name(&nvdimm->dev),
   nd_mapping->start, nd_mapping->size,
   nd_mapping->position);
}
