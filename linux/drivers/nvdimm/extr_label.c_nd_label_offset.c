
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nd_namespace_label {int dummy; } ;


 scalar_t__ to_namespace_index (struct nvdimm_drvdata*,int ) ;

__attribute__((used)) static unsigned long nd_label_offset(struct nvdimm_drvdata *ndd,
  struct nd_namespace_label *nd_label)
{
 return (unsigned long) nd_label
  - (unsigned long) to_namespace_index(ndd, 0);
}
