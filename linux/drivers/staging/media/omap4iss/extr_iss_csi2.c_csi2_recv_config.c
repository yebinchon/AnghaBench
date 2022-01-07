
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_csi2_device {int regs1; int iss; } ;
struct iss_csi2_ctrl_cfg {int vp_out_ctrl; scalar_t__ ecc_enable; scalar_t__ vp_only_enable; scalar_t__ vp_clk_enable; scalar_t__ frame_mode; } ;


 int CSI2_CTRL ;
 int CSI2_CTRL_BURST_SIZE_EXPAND ;
 int CSI2_CTRL_ECC_EN ;
 int CSI2_CTRL_ENDIANNESS ;
 int CSI2_CTRL_FRAME ;
 int CSI2_CTRL_MFLAG_LEVH_MASK ;
 int CSI2_CTRL_MFLAG_LEVH_SHIFT ;
 int CSI2_CTRL_MFLAG_LEVL_MASK ;
 int CSI2_CTRL_MFLAG_LEVL_SHIFT ;
 int CSI2_CTRL_NON_POSTED_WRITE ;
 int CSI2_CTRL_VP_CLK_EN ;
 int CSI2_CTRL_VP_ONLY_EN ;
 int CSI2_CTRL_VP_OUT_CTRL_MASK ;
 int CSI2_CTRL_VP_OUT_CTRL_SHIFT ;
 int iss_reg_write (int ,int ,int ,int) ;

__attribute__((used)) static void csi2_recv_config(struct iss_csi2_device *csi2,
        struct iss_csi2_ctrl_cfg *currctrl)
{
 u32 reg = 0;

 if (currctrl->frame_mode)
  reg |= CSI2_CTRL_FRAME;
 else
  reg &= ~CSI2_CTRL_FRAME;

 if (currctrl->vp_clk_enable)
  reg |= CSI2_CTRL_VP_CLK_EN;
 else
  reg &= ~CSI2_CTRL_VP_CLK_EN;

 if (currctrl->vp_only_enable)
  reg |= CSI2_CTRL_VP_ONLY_EN;
 else
  reg &= ~CSI2_CTRL_VP_ONLY_EN;

 reg &= ~CSI2_CTRL_VP_OUT_CTRL_MASK;
 reg |= currctrl->vp_out_ctrl << CSI2_CTRL_VP_OUT_CTRL_SHIFT;

 if (currctrl->ecc_enable)
  reg |= CSI2_CTRL_ECC_EN;
 else
  reg &= ~CSI2_CTRL_ECC_EN;






 reg &= ~(CSI2_CTRL_MFLAG_LEVH_MASK | CSI2_CTRL_MFLAG_LEVL_MASK);
 reg |= (2 << CSI2_CTRL_MFLAG_LEVH_SHIFT) |
        (4 << CSI2_CTRL_MFLAG_LEVL_SHIFT);


 reg |= CSI2_CTRL_BURST_SIZE_EXPAND;


 reg |= CSI2_CTRL_NON_POSTED_WRITE;





 reg |= CSI2_CTRL_ENDIANNESS;

 iss_reg_write(csi2->iss, csi2->regs1, CSI2_CTRL, reg);
}
