
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {scalar_t__ ana_state; TYPE_1__* ctrl; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ NVME_ANA_OPTIMIZED ;
 scalar_t__ NVME_CTRL_LIVE ;

__attribute__((used)) static inline bool nvme_path_is_optimized(struct nvme_ns *ns)
{
 return ns->ctrl->state == NVME_CTRL_LIVE &&
  ns->ana_state == NVME_ANA_OPTIMIZED;
}
