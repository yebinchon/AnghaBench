
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_ana_group {size_t grpid; TYPE_1__* port; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int * ana_state; struct nvmet_ana_group ana_default_group; } ;


 int NVME_ANA_INACCESSIBLE ;
 int down_write (int *) ;
 int kfree (struct nvmet_ana_group*) ;
 int * nvmet_ana_group_enabled ;
 int nvmet_ana_sem ;
 int nvmet_port_send_ana_event (TYPE_1__*) ;
 struct nvmet_ana_group* to_ana_group (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static void nvmet_ana_group_release(struct config_item *item)
{
 struct nvmet_ana_group *grp = to_ana_group(item);

 if (grp == &grp->port->ana_default_group)
  return;

 down_write(&nvmet_ana_sem);
 grp->port->ana_state[grp->grpid] = NVME_ANA_INACCESSIBLE;
 nvmet_ana_group_enabled[grp->grpid]--;
 up_write(&nvmet_ana_sem);

 nvmet_port_send_ana_event(grp->port);
 kfree(grp);
}
