
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int quirks; int cap; int ctrl_config; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reg_write32 ) (struct nvme_ctrl*,int ,int ) ;} ;


 int NVME_CC_ENABLE ;
 int NVME_CC_SHN_MASK ;
 int NVME_QUIRK_DELAY_AMOUNT ;
 int NVME_QUIRK_DELAY_BEFORE_CHK_RDY ;
 int NVME_REG_CC ;
 int msleep (int ) ;
 int nvme_wait_ready (struct nvme_ctrl*,int ,int) ;
 int stub1 (struct nvme_ctrl*,int ,int ) ;

int nvme_disable_ctrl(struct nvme_ctrl *ctrl)
{
 int ret;

 ctrl->ctrl_config &= ~NVME_CC_SHN_MASK;
 ctrl->ctrl_config &= ~NVME_CC_ENABLE;

 ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
 if (ret)
  return ret;

 if (ctrl->quirks & NVME_QUIRK_DELAY_BEFORE_CHK_RDY)
  msleep(NVME_QUIRK_DELAY_AMOUNT);

 return nvme_wait_ready(ctrl, ctrl->cap, 0);
}
