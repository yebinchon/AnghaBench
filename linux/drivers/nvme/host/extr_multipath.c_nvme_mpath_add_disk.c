
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvme_ns {TYPE_1__* head; int ana_state; TYPE_2__* ctrl; int ana_grpid; } ;
struct nvme_id_ns {int anagrpid; } ;
struct TYPE_5__ {int ana_lock; } ;
struct TYPE_4__ {int lock; } ;


 int NVME_ANA_OPTIMIZED ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nvme_ctrl_use_ana (TYPE_2__*) ;
 int nvme_mpath_set_live (struct nvme_ns*) ;
 int nvme_parse_ana_log (TYPE_2__*,struct nvme_ns*,int ) ;
 int nvme_set_ns_ana_state ;

void nvme_mpath_add_disk(struct nvme_ns *ns, struct nvme_id_ns *id)
{
 if (nvme_ctrl_use_ana(ns->ctrl)) {
  mutex_lock(&ns->ctrl->ana_lock);
  ns->ana_grpid = le32_to_cpu(id->anagrpid);
  nvme_parse_ana_log(ns->ctrl, ns, nvme_set_ns_ana_state);
  mutex_unlock(&ns->ctrl->ana_lock);
 } else {
  mutex_lock(&ns->head->lock);
  ns->ana_state = NVME_ANA_OPTIMIZED;
  nvme_mpath_set_live(ns);
  mutex_unlock(&ns->head->lock);
 }
}
