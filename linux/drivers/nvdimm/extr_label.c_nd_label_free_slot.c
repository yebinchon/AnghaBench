
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nd_namespace_index {int dummy; } ;


 int WARN_ON (int) ;
 int is_nvdimm_bus_locked (int ) ;
 int preamble_next (struct nvdimm_drvdata*,struct nd_namespace_index**,unsigned long**,scalar_t__*) ;
 int test_and_set_bit_le (scalar_t__,unsigned long*) ;

bool nd_label_free_slot(struct nvdimm_drvdata *ndd, u32 slot)
{
 struct nd_namespace_index *nsindex;
 unsigned long *free;
 u32 nslot;

 if (!preamble_next(ndd, &nsindex, &free, &nslot))
  return 0;

 WARN_ON(!is_nvdimm_bus_locked(ndd->dev));

 if (slot < nslot)
  return !test_and_set_bit_le(slot, free);
 return 0;
}
