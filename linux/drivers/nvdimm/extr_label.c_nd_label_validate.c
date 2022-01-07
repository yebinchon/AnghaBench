
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int nslabel_size; } ;


 int ARRAY_SIZE (int*) ;
 int __nd_label_validate (struct nvdimm_drvdata*) ;

__attribute__((used)) static int nd_label_validate(struct nvdimm_drvdata *ndd)
{
 int label_size[] = { 128, 256 };
 int i, rc;

 for (i = 0; i < ARRAY_SIZE(label_size); i++) {
  ndd->nslabel_size = label_size[i];
  rc = __nd_label_validate(ndd);
  if (rc >= 0)
   return rc;
 }

 return -1;
}
