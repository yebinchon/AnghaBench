
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {TYPE_1__* head; } ;
struct nvme_ctrl {int instance; } ;
struct TYPE_2__ {int instance; } ;


 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static inline void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
          struct nvme_ctrl *ctrl, int *flags)
{
 sprintf(disk_name, "nvme%dn%d", ctrl->instance, ns->head->instance);
}
