
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; } ;


 int NSINDEX_ALIGN ;
 int __nvdimm_num_label_slots (struct nvdimm_drvdata*,int) ;
 int __sizeof_namespace_index (int) ;
 int sizeof_namespace_label (struct nvdimm_drvdata*) ;

int nvdimm_num_label_slots(struct nvdimm_drvdata *ndd)
{
 u32 tmp_nslot, n;

 tmp_nslot = ndd->nsarea.config_size / sizeof_namespace_label(ndd);
 n = __sizeof_namespace_index(tmp_nslot) / NSINDEX_ALIGN;

 return __nvdimm_num_label_slots(ndd, NSINDEX_ALIGN * n);
}
