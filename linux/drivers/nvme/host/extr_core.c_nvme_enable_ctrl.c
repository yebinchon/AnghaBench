
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int page_size; unsigned int ctrl_config; int cap; TYPE_1__* ops; int device; } ;
struct TYPE_2__ {int (* reg_read64 ) (struct nvme_ctrl*,int ,int *) ;int (* reg_write32 ) (struct nvme_ctrl*,int ,int) ;} ;


 int ENODEV ;
 int NVME_CAP_MPSMIN (int ) ;
 int NVME_CC_AMS_RR ;
 unsigned int NVME_CC_CSS_NVM ;
 int NVME_CC_ENABLE ;
 int NVME_CC_IOCQES ;
 int NVME_CC_IOSQES ;
 unsigned int NVME_CC_MPS_SHIFT ;
 int NVME_CC_SHN_NONE ;
 int NVME_REG_CAP ;
 int NVME_REG_CC ;
 int dev_err (int ,char*,int,...) ;
 int nvme_wait_ready (struct nvme_ctrl*,int ,int) ;
 int stub1 (struct nvme_ctrl*,int ,int *) ;
 int stub2 (struct nvme_ctrl*,int ,int) ;

int nvme_enable_ctrl(struct nvme_ctrl *ctrl)
{





 unsigned dev_page_min, page_shift = 12;
 int ret;

 ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
 if (ret) {
  dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
  return ret;
 }
 dev_page_min = NVME_CAP_MPSMIN(ctrl->cap) + 12;

 if (page_shift < dev_page_min) {
  dev_err(ctrl->device,
   "Minimum device page size %u too large for host (%u)\n",
   1 << dev_page_min, 1 << page_shift);
  return -ENODEV;
 }

 ctrl->page_size = 1 << page_shift;

 ctrl->ctrl_config = NVME_CC_CSS_NVM;
 ctrl->ctrl_config |= (page_shift - 12) << NVME_CC_MPS_SHIFT;
 ctrl->ctrl_config |= NVME_CC_AMS_RR | NVME_CC_SHN_NONE;
 ctrl->ctrl_config |= NVME_CC_IOSQES | NVME_CC_IOCQES;
 ctrl->ctrl_config |= NVME_CC_ENABLE;

 ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
 if (ret)
  return ret;
 return nvme_wait_ready(ctrl, ctrl->cap, 1);
}
