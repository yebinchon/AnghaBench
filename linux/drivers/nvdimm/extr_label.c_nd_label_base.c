
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
typedef void nd_namespace_label ;


 int sizeof_namespace_index (struct nvdimm_drvdata*) ;
 void* to_namespace_index (struct nvdimm_drvdata*,int ) ;

__attribute__((used)) static struct nd_namespace_label *nd_label_base(struct nvdimm_drvdata *ndd)
{
 void *base = to_namespace_index(ndd, 0);

 return base + 2 * sizeof_namespace_index(ndd);
}
