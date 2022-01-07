
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kobj; int groups; int release; int class; } ;
struct nvme_subsystem {int instance; int ctrls; TYPE_1__ dev; int entry; int ns_ida; int subnqn; int iopolicy; void* awupf; int cmic; void* vendor_id; int firmware_rev; int model; int serial; int nsheads; int ref; int lock; } ;
struct nvme_id_ctrl {int awupf; int cmic; int vid; int fr; int mn; int sn; } ;
struct nvme_ctrl {int instance; int subsys_entry; struct nvme_subsystem* subsys; TYPE_5__* device; } ;
struct TYPE_8__ {int kobj; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NVME_IOPOLICY_NUMA ;
 struct nvme_subsystem* __nvme_find_get_subsystem (int ) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int ida_init (int *) ;
 int kref_init (int *) ;
 struct nvme_subsystem* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_init_subnqn (struct nvme_subsystem*,struct nvme_ctrl*,struct nvme_id_ctrl*) ;
 int nvme_put_subsystem (struct nvme_subsystem*) ;
 int nvme_release_subsystem ;
 int nvme_subsys_attrs_groups ;
 int nvme_subsys_class ;
 int nvme_subsystems ;
 int nvme_subsystems_lock ;
 int nvme_validate_cntlid (struct nvme_subsystem*,struct nvme_ctrl*,struct nvme_id_ctrl*) ;
 int put_device (TYPE_1__*) ;
 int sysfs_create_link (int *,int *,int ) ;

__attribute__((used)) static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
{
 struct nvme_subsystem *subsys, *found;
 int ret;

 subsys = kzalloc(sizeof(*subsys), GFP_KERNEL);
 if (!subsys)
  return -ENOMEM;

 subsys->instance = -1;
 mutex_init(&subsys->lock);
 kref_init(&subsys->ref);
 INIT_LIST_HEAD(&subsys->ctrls);
 INIT_LIST_HEAD(&subsys->nsheads);
 nvme_init_subnqn(subsys, ctrl, id);
 memcpy(subsys->serial, id->sn, sizeof(subsys->serial));
 memcpy(subsys->model, id->mn, sizeof(subsys->model));
 memcpy(subsys->firmware_rev, id->fr, sizeof(subsys->firmware_rev));
 subsys->vendor_id = le16_to_cpu(id->vid);
 subsys->cmic = id->cmic;
 subsys->awupf = le16_to_cpu(id->awupf);




 subsys->dev.class = nvme_subsys_class;
 subsys->dev.release = nvme_release_subsystem;
 subsys->dev.groups = nvme_subsys_attrs_groups;
 dev_set_name(&subsys->dev, "nvme-subsys%d", ctrl->instance);
 device_initialize(&subsys->dev);

 mutex_lock(&nvme_subsystems_lock);
 found = __nvme_find_get_subsystem(subsys->subnqn);
 if (found) {
  put_device(&subsys->dev);
  subsys = found;

  if (!nvme_validate_cntlid(subsys, ctrl, id)) {
   ret = -EINVAL;
   goto out_put_subsystem;
  }
 } else {
  ret = device_add(&subsys->dev);
  if (ret) {
   dev_err(ctrl->device,
    "failed to register subsystem device.\n");
   put_device(&subsys->dev);
   goto out_unlock;
  }
  ida_init(&subsys->ns_ida);
  list_add_tail(&subsys->entry, &nvme_subsystems);
 }

 ret = sysfs_create_link(&subsys->dev.kobj, &ctrl->device->kobj,
    dev_name(ctrl->device));
 if (ret) {
  dev_err(ctrl->device,
   "failed to create sysfs link from subsystem.\n");
  goto out_put_subsystem;
 }

 if (!found)
  subsys->instance = ctrl->instance;
 ctrl->subsys = subsys;
 list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
 mutex_unlock(&nvme_subsystems_lock);
 return 0;

out_put_subsystem:
 nvme_put_subsystem(subsys);
out_unlock:
 mutex_unlock(&nvme_subsystems_lock);
 return ret;
}
