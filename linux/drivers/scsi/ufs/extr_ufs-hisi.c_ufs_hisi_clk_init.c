
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hisi_host {int dummy; } ;
struct ufs_hba {int dummy; } ;


 int BIT_SYSCTRL_REF_CLOCK_EN ;
 int BIT_UFS_REFCLK_ISO_EN ;
 int BIT_UFS_REFCLK_SRC_SEl ;
 int PHY_CLK_CTRL ;
 int PHY_ISO_EN ;
 int UFS_SYSCTRL ;
 int mdelay (int) ;
 int ufs_sys_ctrl_clr_bits (struct ufs_hisi_host*,int,int ) ;
 int ufs_sys_ctrl_readl (struct ufs_hisi_host*,int ) ;
 int ufs_sys_ctrl_set_bits (struct ufs_hisi_host*,int,int ) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_hisi_clk_init(struct ufs_hba *hba)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);

 ufs_sys_ctrl_clr_bits(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
 if (ufs_sys_ctrl_readl(host, PHY_CLK_CTRL) & BIT_SYSCTRL_REF_CLOCK_EN)
  mdelay(1);

 ufs_sys_ctrl_clr_bits(host, BIT_UFS_REFCLK_SRC_SEl, UFS_SYSCTRL);
 ufs_sys_ctrl_clr_bits(host, BIT_UFS_REFCLK_ISO_EN, PHY_ISO_EN);

 ufs_sys_ctrl_set_bits(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
}
