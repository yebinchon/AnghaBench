
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int flags; } ;
struct device {int dummy; } ;


 int NDD_LOCKED ;
 int set_bit (int ,int *) ;
 struct nvdimm* to_nvdimm (struct device*) ;

void nvdimm_set_locked(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 set_bit(NDD_LOCKED, &nvdimm->flags);
}
