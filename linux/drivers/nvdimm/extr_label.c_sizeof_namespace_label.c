
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int nslabel_size; } ;



unsigned sizeof_namespace_label(struct nvdimm_drvdata *ndd)
{
 return ndd->nslabel_size;
}
