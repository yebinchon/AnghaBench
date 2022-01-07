
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int flags; } ;


 int NDD_SECURITY_OVERWRITE ;
 int test_bit (int ,int *) ;

int nvdimm_in_overwrite(struct nvdimm *nvdimm)
{
 return test_bit(NDD_SECURITY_OVERWRITE, &nvdimm->flags);
}
