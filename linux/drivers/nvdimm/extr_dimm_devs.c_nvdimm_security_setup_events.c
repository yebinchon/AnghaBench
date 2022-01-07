
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int overwrite_state; TYPE_2__* ops; int flags; } ;
struct nvdimm {TYPE_3__ sec; } ;
struct TYPE_4__ {int sd; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_5__ {int overwrite; } ;


 int ENOMEM ;
 int devm_add_action_or_reset (struct device*,int ,struct nvdimm*) ;
 int shutdown_security_notify ;
 int sysfs_get_dirent (int ,char*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

int nvdimm_security_setup_events(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 if (!nvdimm->sec.flags || !nvdimm->sec.ops
   || !nvdimm->sec.ops->overwrite)
  return 0;
 nvdimm->sec.overwrite_state = sysfs_get_dirent(dev->kobj.sd, "security");
 if (!nvdimm->sec.overwrite_state)
  return -ENOMEM;

 return devm_add_action_or_reset(dev, shutdown_security_notify, nvdimm);
}
