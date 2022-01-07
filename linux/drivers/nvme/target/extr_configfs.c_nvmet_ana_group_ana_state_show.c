
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvmet_ana_group {size_t grpid; TYPE_1__* port; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
typedef enum nvme_ana_state { ____Placeholder_nvme_ana_state } nvme_ana_state ;
struct TYPE_5__ {int state; char* name; } ;
struct TYPE_4__ {int* ana_state; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* nvmet_ana_state_names ;
 int sprintf (char*,char*,...) ;
 struct nvmet_ana_group* to_ana_group (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_ana_group_ana_state_show(struct config_item *item,
  char *page)
{
 struct nvmet_ana_group *grp = to_ana_group(item);
 enum nvme_ana_state state = grp->port->ana_state[grp->grpid];
 int i;

 for (i = 0; i < ARRAY_SIZE(nvmet_ana_state_names); i++) {
  if (state != nvmet_ana_state_names[i].state)
   continue;
  return sprintf(page, "%s\n", nvmet_ana_state_names[i].name);
 }

 return sprintf(page, "\n");
}
