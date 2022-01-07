
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_id_ctrl {int dummy; } ;
struct nvme_ctrl {int device; TYPE_1__* subsys; } ;
struct TYPE_2__ {int cmic; } ;


 int dev_warn (int ,char*) ;

__attribute__((used)) static inline int nvme_mpath_init(struct nvme_ctrl *ctrl,
  struct nvme_id_ctrl *id)
{
 if (ctrl->subsys->cmic & (1 << 3))
  dev_warn(ctrl->device,
"Please enable CONFIG_NVME_MULTIPATH for full support of multi-port devices.\n");
 return 0;
}
