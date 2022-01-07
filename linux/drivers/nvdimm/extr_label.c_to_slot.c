
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nd_namespace_label {int dummy; } ;


 scalar_t__ nd_label_base (struct nvdimm_drvdata*) ;
 unsigned long sizeof_namespace_label (struct nvdimm_drvdata*) ;

__attribute__((used)) static int to_slot(struct nvdimm_drvdata *ndd,
  struct nd_namespace_label *nd_label)
{
 unsigned long label, base;

 label = (unsigned long) nd_label;
 base = (unsigned long) nd_label_base(ndd);

 return (label - base) / sizeof_namespace_label(ndd);
}
