
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int ns_current; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_namespace_index {int minor; int major; } ;
struct nd_mapping {int dummy; } ;
struct device {int parent; } ;


 int ENXIO ;
 int NVDIMM_CCLASS_BTT ;
 int NVDIMM_CCLASS_BTT2 ;
 int __le16_to_cpu (int ) ;
 struct nd_namespace_index* to_namespace_index (struct nvdimm_drvdata*,int ) ;
 struct nd_region* to_nd_region (int ) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;

__attribute__((used)) static int btt_claim_class(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 int i, loop_bitmask = 0;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);
  struct nd_namespace_index *nsindex;





  if (!ndd) {
   loop_bitmask = 0;
   break;
  }

  nsindex = to_namespace_index(ndd, ndd->ns_current);
  if (nsindex == ((void*)0))
   loop_bitmask |= 1;
  else {

   if (__le16_to_cpu(nsindex->major) == 1
     && __le16_to_cpu(nsindex->minor) == 1)
    loop_bitmask |= 2;
   else
    loop_bitmask |= 4;
  }
 }
 switch (loop_bitmask) {
 case 0:
 case 2:
  return NVDIMM_CCLASS_BTT;
 case 1:
 case 4:
  return NVDIMM_CCLASS_BTT2;
 default:
  return -ENXIO;
 }
}
