
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; } ;
struct nd_region {scalar_t__ bb_state; int bb; scalar_t__ ndr_size; scalar_t__ ndr_start; int dev; } ;
struct device {int dummy; } ;
typedef enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;


 int NVDIMM_REVALIDATE_POISON ;
 int child_notify ;
 int device_for_each_child (struct device*,int*,int ) ;
 scalar_t__ is_memory (int *) ;
 int nvdimm_badblocks_populate (struct nd_region*,int *,struct resource*) ;
 int sysfs_notify_dirent (scalar_t__) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static void nd_region_notify(struct device *dev, enum nvdimm_event event)
{
 if (event == NVDIMM_REVALIDATE_POISON) {
  struct nd_region *nd_region = to_nd_region(dev);
  struct resource res;

  if (is_memory(&nd_region->dev)) {
   res.start = nd_region->ndr_start;
   res.end = nd_region->ndr_start +
    nd_region->ndr_size - 1;
   nvdimm_badblocks_populate(nd_region,
     &nd_region->bb, &res);
   if (nd_region->bb_state)
    sysfs_notify_dirent(nd_region->bb_state);
  }
 }
 device_for_each_child(dev, &event, child_notify);
}
