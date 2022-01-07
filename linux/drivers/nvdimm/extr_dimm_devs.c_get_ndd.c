
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int kref; } ;


 int kref_get (int *) ;

void get_ndd(struct nvdimm_drvdata *ndd)
{
 kref_get(&ndd->kref);
}
