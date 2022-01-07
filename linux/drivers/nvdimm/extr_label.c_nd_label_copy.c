
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nd_namespace_index {int dummy; } ;


 int memcpy (struct nd_namespace_index*,struct nd_namespace_index*,int ) ;
 int sizeof_namespace_index (struct nvdimm_drvdata*) ;

__attribute__((used)) static void nd_label_copy(struct nvdimm_drvdata *ndd,
     struct nd_namespace_index *dst,
     struct nd_namespace_index *src)
{

 if (!dst || !src)
  return;

 memcpy(dst, src, sizeof_namespace_index(ndd));
}
