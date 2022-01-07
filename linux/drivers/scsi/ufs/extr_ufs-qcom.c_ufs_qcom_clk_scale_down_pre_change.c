
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_qcom_host {int dummy; } ;
struct ufs_hba {int dummy; } ;


 int DME_VS_CORE_CLK_CTRL ;
 int DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT ;
 int UIC_ARG_MIB (int ) ;
 int ufs_qcom_cap_qunipro (struct ufs_qcom_host*) ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static int ufs_qcom_clk_scale_down_pre_change(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);
 int err;
 u32 core_clk_ctrl_reg;

 if (!ufs_qcom_cap_qunipro(host))
  return 0;

 err = ufshcd_dme_get(hba,
       UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
       &core_clk_ctrl_reg);


 if (!err &&
     (core_clk_ctrl_reg & DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT)) {
  core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT;
  err = ufshcd_dme_set(hba,
        UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
        core_clk_ctrl_reg);
 }

 return err;
}
