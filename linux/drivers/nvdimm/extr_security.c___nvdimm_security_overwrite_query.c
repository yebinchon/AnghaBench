
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvdimm_bus {int reconfig_mutex; } ;
struct TYPE_4__ {unsigned int overwrite_tmo; void* flags; scalar_t__ overwrite_state; TYPE_1__* ops; } ;
struct nvdimm {TYPE_2__ sec; int dev; int flags; int dwork; } ;
struct TYPE_3__ {int (* query_overwrite ) (struct nvdimm*) ;} ;


 int EBUSY ;
 unsigned int HZ ;
 int NDD_SECURITY_OVERWRITE ;
 int NDD_WORK_PENDING ;
 int NVDIMM_MASTER ;
 int NVDIMM_USER ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int lockdep_assert_held (int *) ;
 unsigned int min (unsigned int,unsigned int) ;
 void* nvdimm_security_flags (struct nvdimm*,int ) ;
 int put_device (int *) ;
 int queue_delayed_work (int ,int *,unsigned int) ;
 int stub1 (struct nvdimm*) ;
 int sysfs_notify_dirent (scalar_t__) ;
 int system_wq ;
 int test_bit (int ,int *) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int *) ;

void __nvdimm_security_overwrite_query(struct nvdimm *nvdimm)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(&nvdimm->dev);
 int rc;
 unsigned int tmo;


 lockdep_assert_held(&nvdimm_bus->reconfig_mutex);





 if (!test_bit(NDD_WORK_PENDING, &nvdimm->flags))
  return;

 tmo = nvdimm->sec.overwrite_tmo;

 if (!nvdimm->sec.ops || !nvdimm->sec.ops->query_overwrite
   || !nvdimm->sec.flags)
  return;

 rc = nvdimm->sec.ops->query_overwrite(nvdimm);
 if (rc == -EBUSY) {


  tmo += 10;
  queue_delayed_work(system_wq, &nvdimm->dwork, tmo * HZ);
  nvdimm->sec.overwrite_tmo = min(15U * 60U, tmo);
  return;
 }

 if (rc < 0)
  dev_dbg(&nvdimm->dev, "overwrite failed\n");
 else
  dev_dbg(&nvdimm->dev, "overwrite completed\n");

 if (nvdimm->sec.overwrite_state)
  sysfs_notify_dirent(nvdimm->sec.overwrite_state);
 nvdimm->sec.overwrite_tmo = 0;
 clear_bit(NDD_SECURITY_OVERWRITE, &nvdimm->flags);
 clear_bit(NDD_WORK_PENDING, &nvdimm->flags);
 put_device(&nvdimm->dev);
 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);
 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_MASTER);
}
