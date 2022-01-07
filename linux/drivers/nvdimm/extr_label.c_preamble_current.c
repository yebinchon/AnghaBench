
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int ns_current; } ;
struct nd_namespace_index {int dummy; } ;


 int preamble_index (struct nvdimm_drvdata*,int ,struct nd_namespace_index**,unsigned long**,int *) ;

__attribute__((used)) static bool preamble_current(struct nvdimm_drvdata *ndd,
  struct nd_namespace_index **nsindex,
  unsigned long **free, u32 *nslot)
{
 return preamble_index(ndd, ndd->ns_current, nsindex,
   free, nslot);
}
