
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {TYPE_1__* ops; int subsystem; } ;
struct TYPE_2__ {int (* reg_write32 ) (struct nvme_ctrl*,int ,int) ;} ;


 int ENOTTY ;
 int NVME_REG_NSSR ;
 int stub1 (struct nvme_ctrl*,int ,int) ;

__attribute__((used)) static inline int nvme_reset_subsystem(struct nvme_ctrl *ctrl)
{
 if (!ctrl->subsystem)
  return -ENOTTY;
 return ctrl->ops->reg_write32(ctrl, NVME_REG_NSSR, 0x4E564D65);
}
