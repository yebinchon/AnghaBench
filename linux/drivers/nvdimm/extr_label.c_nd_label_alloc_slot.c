
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nd_namespace_index {int dummy; } ;


 scalar_t__ UINT_MAX ;
 int WARN_ON (int) ;
 int clear_bit_le (scalar_t__,unsigned long*) ;
 scalar_t__ find_next_bit_le (unsigned long*,scalar_t__,int ) ;
 int is_nvdimm_bus_locked (int ) ;
 int preamble_next (struct nvdimm_drvdata*,struct nd_namespace_index**,unsigned long**,scalar_t__*) ;

u32 nd_label_alloc_slot(struct nvdimm_drvdata *ndd)
{
 struct nd_namespace_index *nsindex;
 unsigned long *free;
 u32 nslot, slot;

 if (!preamble_next(ndd, &nsindex, &free, &nslot))
  return UINT_MAX;

 WARN_ON(!is_nvdimm_bus_locked(ndd->dev));

 slot = find_next_bit_le(free, nslot, 0);
 if (slot == nslot)
  return UINT_MAX;

 clear_bit_le(slot, free);

 return slot;
}
