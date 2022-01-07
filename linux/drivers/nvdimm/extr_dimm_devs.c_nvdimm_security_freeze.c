
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; TYPE_2__* ops; } ;
struct nvdimm {TYPE_1__ sec; int dev; int flags; } ;
struct TYPE_4__ {int (* freeze ) (struct nvdimm*) ;} ;


 int EBUSY ;
 int EIO ;
 int EOPNOTSUPP ;
 int NDD_SECURITY_OVERWRITE ;
 int NVDIMM_USER ;
 int WARN_ON_ONCE (int) ;
 int dev_warn (int *,char*) ;
 int is_nvdimm_bus_locked (int *) ;
 scalar_t__ nvdimm_security_flags (struct nvdimm*,int ) ;
 int stub1 (struct nvdimm*) ;
 scalar_t__ test_bit (int ,int *) ;

int nvdimm_security_freeze(struct nvdimm *nvdimm)
{
 int rc;

 WARN_ON_ONCE(!is_nvdimm_bus_locked(&nvdimm->dev));

 if (!nvdimm->sec.ops || !nvdimm->sec.ops->freeze)
  return -EOPNOTSUPP;

 if (!nvdimm->sec.flags)
  return -EIO;

 if (test_bit(NDD_SECURITY_OVERWRITE, &nvdimm->flags)) {
  dev_warn(&nvdimm->dev, "Overwrite operation in progress.\n");
  return -EBUSY;
 }

 rc = nvdimm->sec.ops->freeze(nvdimm);
 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);

 return rc;
}
