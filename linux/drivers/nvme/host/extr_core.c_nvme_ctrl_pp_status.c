
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvme_ctrl {int ctrl_config; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* reg_read32 ) (struct nvme_ctrl*,int ,int*) ;} ;


 int NVME_CC_ENABLE ;
 int NVME_CSTS_PP ;
 int NVME_REG_CSTS ;
 scalar_t__ stub1 (struct nvme_ctrl*,int ,int*) ;

__attribute__((used)) static bool nvme_ctrl_pp_status(struct nvme_ctrl *ctrl)
{

 u32 csts;

 if (ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts))
  return 0;

 if (csts == ~0)
  return 0;

 return ((ctrl->ctrl_config & NVME_CC_ENABLE) && (csts & NVME_CSTS_PP));
}
