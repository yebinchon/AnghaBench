
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ns {TYPE_2__* head; } ;
struct nvme_ctrl {int instance; TYPE_1__* subsys; } ;
struct TYPE_4__ {int instance; scalar_t__ disk; } ;
struct TYPE_3__ {int instance; } ;


 int GENHD_FL_HIDDEN ;
 int multipath ;
 int sprintf (char*,char*,int,int,...) ;

void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
   struct nvme_ctrl *ctrl, int *flags)
{
 if (!multipath) {
  sprintf(disk_name, "nvme%dn%d", ctrl->instance, ns->head->instance);
 } else if (ns->head->disk) {
  sprintf(disk_name, "nvme%dc%dn%d", ctrl->subsys->instance,
    ctrl->instance, ns->head->instance);
  *flags = GENHD_FL_HIDDEN;
 } else {
  sprintf(disk_name, "nvme%dn%d", ctrl->subsys->instance,
    ns->head->instance);
 }
}
