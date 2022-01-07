
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int dummy; } ;
struct nd_namespace_index {int nslot; scalar_t__ free; } ;


 int __le32_to_cpu (int ) ;
 struct nd_namespace_index* to_namespace_index (struct nvdimm_drvdata*,int) ;

__attribute__((used)) static bool preamble_index(struct nvdimm_drvdata *ndd, int idx,
  struct nd_namespace_index **nsindex_out,
  unsigned long **free, u32 *nslot)
{
 struct nd_namespace_index *nsindex;

 nsindex = to_namespace_index(ndd, idx);
 if (nsindex == ((void*)0))
  return 0;

 *free = (unsigned long *) nsindex->free;
 *nslot = __le32_to_cpu(nsindex->nslot);
 *nsindex_out = nsindex;

 return 1;
}
