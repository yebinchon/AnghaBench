
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct resource {int dummy; } ;
struct nvdimm_drvdata {int dummy; } ;
struct nd_region {int dev; struct nd_mapping* mapping; } ;
struct nd_namespace_label {int uuid; int dpa; } ;
struct nd_mapping {int dummy; } ;
struct device {int dummy; } ;


 int ENXIO ;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int NSLABEL_UUID_LEN ;
 int WARN_ON (int) ;
 int __le64_to_cpu (int ) ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 int * namespace_to_uuid (struct device*) ;
 int nd_dbg_dpa (struct nd_region*,struct nvdimm_drvdata*,struct resource*,char*,int) ;
 struct resource* nsblk_add_resource (struct nd_region*,struct nvdimm_drvdata*,int ,int ) ;
 int to_nd_namespace_blk (struct device*) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;

__attribute__((used)) static int add_namespace_resource(struct nd_region *nd_region,
  struct nd_namespace_label *nd_label, struct device **devs,
  int count)
{
 struct nd_mapping *nd_mapping = &nd_region->mapping[0];
 struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);
 int i;

 for (i = 0; i < count; i++) {
  u8 *uuid = namespace_to_uuid(devs[i]);
  struct resource *res;

  if (IS_ERR_OR_NULL(uuid)) {
   WARN_ON(1);
   continue;
  }

  if (memcmp(uuid, nd_label->uuid, NSLABEL_UUID_LEN) != 0)
   continue;
  if (is_namespace_blk(devs[i])) {
   res = nsblk_add_resource(nd_region, ndd,
     to_nd_namespace_blk(devs[i]),
     __le64_to_cpu(nd_label->dpa));
   if (!res)
    return -ENXIO;
   nd_dbg_dpa(nd_region, ndd, res, "%d assign\n", count);
  } else {
   dev_err(&nd_region->dev,
     "error: conflicting extents for uuid: %pUb\n",
     nd_label->uuid);
   return -ENXIO;
  }
  break;
 }

 return i;
}
