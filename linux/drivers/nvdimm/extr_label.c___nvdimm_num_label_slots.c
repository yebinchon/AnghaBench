
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; } ;


 size_t sizeof_namespace_label (struct nvdimm_drvdata*) ;

__attribute__((used)) static int __nvdimm_num_label_slots(struct nvdimm_drvdata *ndd,
  size_t index_size)
{
 return (ndd->nsarea.config_size - index_size * 2) /
   sizeof_namespace_label(ndd);
}
