
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvme_ctrl {int scan_lock; TYPE_1__* subsys; } ;
struct TYPE_2__ {int lock; } ;


 int NVME_CMD_EFFECTS_CCC ;
 int NVME_CMD_EFFECTS_CSE_MASK ;
 int NVME_CMD_EFFECTS_LBCC ;
 int NVME_CMD_EFFECTS_NCC ;
 int NVME_CMD_EFFECTS_NIC ;
 int NVME_NSID_ALL ;
 int mutex_unlock (int *) ;
 int nvme_init_identify (struct nvme_ctrl*) ;
 int nvme_mpath_unfreeze (TYPE_1__*) ;
 int nvme_queue_scan (struct nvme_ctrl*) ;
 int nvme_remove_invalid_namespaces (struct nvme_ctrl*,int ) ;
 int nvme_unfreeze (struct nvme_ctrl*) ;
 int nvme_update_formats (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
{





 if (effects & NVME_CMD_EFFECTS_LBCC)
  nvme_update_formats(ctrl);
 if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
  nvme_unfreeze(ctrl);
  nvme_mpath_unfreeze(ctrl->subsys);
  mutex_unlock(&ctrl->subsys->lock);
  nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
  mutex_unlock(&ctrl->scan_lock);
 }
 if (effects & NVME_CMD_EFFECTS_CCC)
  nvme_init_identify(ctrl);
 if (effects & (NVME_CMD_EFFECTS_NIC | NVME_CMD_EFFECTS_NCC))
  nvme_queue_scan(ctrl);
}
