
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dev; } ;


 char const* dev_name (int *) ;

const char *nvdimm_name(struct nvdimm *nvdimm)
{
 return dev_name(&nvdimm->dev);
}
