
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {TYPE_1__* head; int ana_state; int flags; int ana_grpid; } ;
struct nvme_ana_group_desc {int state; int grpid; } ;
struct TYPE_2__ {int lock; } ;


 int NVME_NS_ANA_PENDING ;
 int clear_bit (int ,int *) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_mpath_set_live (struct nvme_ns*) ;
 scalar_t__ nvme_state_is_live (int ) ;

__attribute__((used)) static void nvme_update_ns_ana_state(struct nvme_ana_group_desc *desc,
  struct nvme_ns *ns)
{
 mutex_lock(&ns->head->lock);
 ns->ana_grpid = le32_to_cpu(desc->grpid);
 ns->ana_state = desc->state;
 clear_bit(NVME_NS_ANA_PENDING, &ns->flags);

 if (nvme_state_is_live(ns->ana_state))
  nvme_mpath_set_live(ns);
 mutex_unlock(&ns->head->lock);
}
