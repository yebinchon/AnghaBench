
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iss_csi2_ctrl_cfg {scalar_t__ if_enable; } ;
struct iss_csi2_device {int regs1; int iss; struct iss_csi2_ctrl_cfg ctrl; } ;


 int CSI2_CTRL ;
 int CSI2_CTRL_IF_EN ;
 int iss_reg_update (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void csi2_if_enable(struct iss_csi2_device *csi2, u8 enable)
{
 struct iss_csi2_ctrl_cfg *currctrl = &csi2->ctrl;

 iss_reg_update(csi2->iss, csi2->regs1, CSI2_CTRL, CSI2_CTRL_IF_EN,
         enable ? CSI2_CTRL_IF_EN : 0);

 currctrl->if_enable = enable;
}
