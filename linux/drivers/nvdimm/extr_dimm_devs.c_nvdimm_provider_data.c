
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {void* provider_data; } ;



void *nvdimm_provider_data(struct nvdimm *nvdimm)
{
 if (nvdimm)
  return nvdimm->provider_data;
 return ((void*)0);
}
