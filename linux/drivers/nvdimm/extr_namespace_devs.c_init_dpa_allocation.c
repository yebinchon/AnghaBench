
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct nvdimm_drvdata {int dummy; } ;
struct nd_region {int dummy; } ;
struct nd_mapping {scalar_t__ start; scalar_t__ size; } ;
struct nd_label_id {int id; } ;
typedef scalar_t__ resource_size_t ;


 int EBUSY ;
 int nd_dbg_dpa (struct nd_region*,struct nvdimm_drvdata*,struct resource*,char*,int) ;
 struct resource* nvdimm_allocate_dpa (struct nvdimm_drvdata*,struct nd_label_id*,scalar_t__,scalar_t__) ;
 scalar_t__ strncmp (int ,char*,int) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;

__attribute__((used)) static resource_size_t init_dpa_allocation(struct nd_label_id *label_id,
  struct nd_region *nd_region, struct nd_mapping *nd_mapping,
  resource_size_t n)
{
 bool is_blk = strncmp(label_id->id, "blk", 3) == 0;
 struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);
 resource_size_t first_dpa;
 struct resource *res;
 int rc = 0;


 if (is_blk)
  first_dpa = nd_mapping->start + nd_mapping->size - n;
 else
  first_dpa = nd_mapping->start;


 res = nvdimm_allocate_dpa(ndd, label_id, first_dpa, n);
 if (!res)
  rc = -EBUSY;

 nd_dbg_dpa(nd_region, ndd, res, "init %d\n", rc);
 return rc ? n : 0;
}
