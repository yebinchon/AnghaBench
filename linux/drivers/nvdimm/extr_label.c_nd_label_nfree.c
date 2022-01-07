
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nd_namespace_index {int dummy; } ;


 int WARN_ON (int) ;
 int bitmap_weight (unsigned long*,int ) ;
 int is_nvdimm_bus_locked (int ) ;
 int nvdimm_num_label_slots (struct nvdimm_drvdata*) ;
 int preamble_next (struct nvdimm_drvdata*,struct nd_namespace_index**,unsigned long**,int *) ;

u32 nd_label_nfree(struct nvdimm_drvdata *ndd)
{
 struct nd_namespace_index *nsindex;
 unsigned long *free;
 u32 nslot;

 WARN_ON(!is_nvdimm_bus_locked(ndd->dev));

 if (!preamble_next(ndd, &nsindex, &free, &nslot))
  return nvdimm_num_label_slots(ndd);

 return bitmap_weight(free, nslot);
}
