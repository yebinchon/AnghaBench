
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; int dev; } ;


 int __sizeof_namespace_index (int) ;
 int dev_err (int ,char*,int,int) ;
 int nvdimm_num_label_slots (struct nvdimm_drvdata*) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;

size_t sizeof_namespace_index(struct nvdimm_drvdata *ndd)
{
 u32 nslot, space, size;







 nslot = nvdimm_num_label_slots(ndd);
 space = ndd->nsarea.config_size - nslot * sizeof_namespace_label(ndd);
 size = __sizeof_namespace_index(nslot) * 2;
 if (size <= space && nslot >= 2)
  return size / 2;

 dev_err(ndd->dev, "label area (%d) too small to host (%d byte) labels\n",
   ndd->nsarea.config_size, sizeof_namespace_label(ndd));
 return 0;
}
