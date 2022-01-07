
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct nvdimm {int dwork; int flags; TYPE_1__ sec; } ;
struct device {scalar_t__ class; } ;


 int NDD_WORK_PENDING ;
 int ND_SYNC ;
 int NVDIMM_SECURITY_FROZEN ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ is_nvdimm (struct device*) ;
 int nd_device_unregister (struct device*,int ) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int put_device (struct device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static int child_unregister(struct device *dev, void *data)
{






 if (dev->class)
  return 0;

 if (is_nvdimm(dev)) {
  struct nvdimm *nvdimm = to_nvdimm(dev);
  bool dev_put = 0;


  nvdimm_bus_lock(dev);
  set_bit(NVDIMM_SECURITY_FROZEN, &nvdimm->sec.flags);
  if (test_and_clear_bit(NDD_WORK_PENDING, &nvdimm->flags))
   dev_put = 1;
  nvdimm_bus_unlock(dev);
  cancel_delayed_work_sync(&nvdimm->dwork);
  if (dev_put)
   put_device(dev);
 }
 nd_device_unregister(dev, ND_SYNC);

 return 0;
}
