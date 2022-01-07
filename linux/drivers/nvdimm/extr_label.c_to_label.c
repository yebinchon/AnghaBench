
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nd_namespace_label {int dummy; } ;


 scalar_t__ nd_label_base (struct nvdimm_drvdata*) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;

__attribute__((used)) static struct nd_namespace_label *to_label(struct nvdimm_drvdata *ndd, int slot)
{
 unsigned long label, base;

 base = (unsigned long) nd_label_base(ndd);
 label = base + sizeof_namespace_label(ndd) * slot;

 return (struct nd_namespace_label *) label;
}
