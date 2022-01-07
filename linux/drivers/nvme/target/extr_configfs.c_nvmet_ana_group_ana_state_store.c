
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvmet_ana_group {size_t grpid; TYPE_1__* port; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {int state; int name; } ;
struct TYPE_4__ {int * ana_state; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 size_t EINVAL ;
 int down_write (int *) ;
 int nvmet_ana_chgcnt ;
 int nvmet_ana_sem ;
 TYPE_2__* nvmet_ana_state_names ;
 int nvmet_port_send_ana_event (TYPE_1__*) ;
 int pr_err (char*,char const*) ;
 scalar_t__ sysfs_streq (char const*,int ) ;
 struct nvmet_ana_group* to_ana_group (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t nvmet_ana_group_ana_state_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ana_group *grp = to_ana_group(item);
 int i;

 for (i = 0; i < ARRAY_SIZE(nvmet_ana_state_names); i++) {
  if (sysfs_streq(page, nvmet_ana_state_names[i].name))
   goto found;
 }

 pr_err("Invalid value '%s' for ana_state\n", page);
 return -EINVAL;

found:
 down_write(&nvmet_ana_sem);
 grp->port->ana_state[grp->grpid] = nvmet_ana_state_names[i].state;
 nvmet_ana_chgcnt++;
 up_write(&nvmet_ana_sem);

 nvmet_port_send_ana_event(grp->port);
 return count;
}
