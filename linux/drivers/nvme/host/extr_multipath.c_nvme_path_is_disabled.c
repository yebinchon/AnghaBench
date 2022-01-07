
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {int flags; TYPE_1__* ctrl; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ NVME_CTRL_LIVE ;
 int NVME_NS_ANA_PENDING ;
 int NVME_NS_REMOVING ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nvme_path_is_disabled(struct nvme_ns *ns)
{
 return ns->ctrl->state != NVME_CTRL_LIVE ||
  test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
  test_bit(NVME_NS_REMOVING, &ns->flags);
}
