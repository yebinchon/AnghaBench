
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int DME_VS_CORE_CLK_CTRL ;
 int DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT ;
 int DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK ;
 int EINVAL ;
 int UIC_ARG_MIB (int ) ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int *) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static int ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div(struct ufs_hba *hba,
             u32 clk_cycles)
{
 int err;
 u32 core_clk_ctrl_reg;

 if (clk_cycles > DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK)
  return -EINVAL;

 err = ufshcd_dme_get(hba,
       UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
       &core_clk_ctrl_reg);
 if (err)
  goto out;

 core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK;
 core_clk_ctrl_reg |= clk_cycles;


 core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT;

 err = ufshcd_dme_set(hba,
       UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
       core_clk_ctrl_reg);
out:
 return err;
}
