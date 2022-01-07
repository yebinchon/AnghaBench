
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct nvdimm_security_ops {int dummy; } ;
struct nvdimm_bus {int dev; } ;
struct TYPE_2__ {void* ext_flags; void* flags; scalar_t__ overwrite_tmo; struct nvdimm_security_ops const* ops; } ;
struct device {struct attribute_group const** groups; int devt; int * type; int * parent; } ;
struct nvdimm {scalar_t__ id; char const* dimm_id; unsigned long flags; unsigned long cmd_mask; int num_flush; TYPE_1__ sec; int dwork; struct device dev; int busy; struct resource* flush_wpq; void* provider_data; } ;
struct attribute_group {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MKDEV (int ,scalar_t__) ;
 int NDD_NOBLK ;
 int NVDIMM_MASTER ;
 int NVDIMM_USER ;
 int atomic_set (int *,int ) ;
 int dev_set_name (struct device*,char*,scalar_t__) ;
 int dimm_ida ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nvdimm*) ;
 struct nvdimm* kzalloc (int,int ) ;
 int nd_device_register (struct device*) ;
 scalar_t__ noblk ;
 int nvdimm_device_type ;
 int nvdimm_major ;
 void* nvdimm_security_flags (struct nvdimm*,int ) ;
 int nvdimm_security_overwrite_query ;

struct nvdimm *__nvdimm_create(struct nvdimm_bus *nvdimm_bus,
  void *provider_data, const struct attribute_group **groups,
  unsigned long flags, unsigned long cmd_mask, int num_flush,
  struct resource *flush_wpq, const char *dimm_id,
  const struct nvdimm_security_ops *sec_ops)
{
 struct nvdimm *nvdimm = kzalloc(sizeof(*nvdimm), GFP_KERNEL);
 struct device *dev;

 if (!nvdimm)
  return ((void*)0);

 nvdimm->id = ida_simple_get(&dimm_ida, 0, 0, GFP_KERNEL);
 if (nvdimm->id < 0) {
  kfree(nvdimm);
  return ((void*)0);
 }

 nvdimm->dimm_id = dimm_id;
 nvdimm->provider_data = provider_data;
 if (noblk)
  flags |= 1 << NDD_NOBLK;
 nvdimm->flags = flags;
 nvdimm->cmd_mask = cmd_mask;
 nvdimm->num_flush = num_flush;
 nvdimm->flush_wpq = flush_wpq;
 atomic_set(&nvdimm->busy, 0);
 dev = &nvdimm->dev;
 dev_set_name(dev, "nmem%d", nvdimm->id);
 dev->parent = &nvdimm_bus->dev;
 dev->type = &nvdimm_device_type;
 dev->devt = MKDEV(nvdimm_major, nvdimm->id);
 dev->groups = groups;
 nvdimm->sec.ops = sec_ops;
 nvdimm->sec.overwrite_tmo = 0;
 INIT_DELAYED_WORK(&nvdimm->dwork, nvdimm_security_overwrite_query);





 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);
 nvdimm->sec.ext_flags = nvdimm_security_flags(nvdimm, NVDIMM_MASTER);
 nd_device_register(dev);

 return nvdimm;
}
