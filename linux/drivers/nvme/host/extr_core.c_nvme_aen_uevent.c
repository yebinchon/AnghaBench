
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvme_ctrl {TYPE_1__* device; scalar_t__ aen_result; } ;
struct TYPE_2__ {int kobj; } ;


 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 char* kasprintf (int ,char*,scalar_t__) ;
 int kfree (char*) ;
 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
{
 char *envp[2] = { ((void*)0), ((void*)0) };
 u32 aen_result = ctrl->aen_result;

 ctrl->aen_result = 0;
 if (!aen_result)
  return;

 envp[0] = kasprintf(GFP_KERNEL, "NVME_AEN=%#08x", aen_result);
 if (!envp[0])
  return;
 kobject_uevent_env(&ctrl->device->kobj, KOBJ_CHANGE, envp);
 kfree(envp[0]);
}
