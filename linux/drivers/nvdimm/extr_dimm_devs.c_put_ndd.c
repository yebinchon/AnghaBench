
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int kref; } ;


 int kref_put (int *,int ) ;
 int nvdimm_drvdata_release ;

void put_ndd(struct nvdimm_drvdata *ndd)
{
 if (ndd)
  kref_put(&ndd->kref, nvdimm_drvdata_release);
}
