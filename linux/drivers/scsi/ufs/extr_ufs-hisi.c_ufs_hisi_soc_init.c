
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hisi_host {int rst; } ;
struct ufs_hba {int dummy; } ;


 int BIT_SYSCTRL_LP_ISOL_EN ;
 int BIT_SYSCTRL_LP_RESET_N ;
 int BIT_SYSCTRL_PSW_CLK_EN ;
 int BIT_SYSCTRL_PWR_READY ;
 int BIT_UFS_DEVICE_RESET ;
 int BIT_UFS_PHY_ISO_CTRL ;
 int BIT_UFS_PSW_ISO_CTRL ;
 int BIT_UFS_PSW_MTCMOS_EN ;
 int CLOCK_GATE_BYPASS ;
 int HC_LP_CTRL ;
 int IS_ERR (int ) ;
 int MASK_SYSCTRL_CFG_CLOCK_FREQ ;
 int MASK_SYSCTRL_REF_CLOCK_SEL ;
 int MASK_UFS_CLK_GATE_BYPASS ;
 int MASK_UFS_DEVICE_RESET ;
 int MASK_UFS_SYSCRTL_BYPASS ;
 int PHY_CLK_CTRL ;
 int PHY_ISO_EN ;
 int PSW_CLK_CTRL ;
 int PSW_POWER_CTRL ;
 int RESET_CTRL_EN ;
 int UFS_DEVICE_RESET_CTRL ;
 int UFS_FREQ_CFG_CLK ;
 int UFS_SYSCTRL ;
 int mdelay (int) ;
 int msleep (int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;
 int ufs_sys_ctrl_clr_bits (struct ufs_hisi_host*,int ,int ) ;
 int ufs_sys_ctrl_readl (struct ufs_hisi_host*,int ) ;
 int ufs_sys_ctrl_set_bits (struct ufs_hisi_host*,int ,int ) ;
 int ufs_sys_ctrl_writel (struct ufs_hisi_host*,int,int ) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_hisi_soc_init(struct ufs_hba *hba)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);
 u32 reg;

 if (!IS_ERR(host->rst))
  reset_control_assert(host->rst);


 ufs_sys_ctrl_set_bits(host, BIT_UFS_PSW_MTCMOS_EN, PSW_POWER_CTRL);
 udelay(10);

 ufs_sys_ctrl_set_bits(host, BIT_SYSCTRL_PWR_READY, HC_LP_CTRL);
 ufs_sys_ctrl_writel(host, MASK_UFS_DEVICE_RESET | 0,
  UFS_DEVICE_RESET_CTRL);

 reg = ufs_sys_ctrl_readl(host, PHY_CLK_CTRL);
 reg = (reg & ~MASK_SYSCTRL_CFG_CLOCK_FREQ) | UFS_FREQ_CFG_CLK;

 ufs_sys_ctrl_writel(host, reg, PHY_CLK_CTRL);

 ufs_sys_ctrl_clr_bits(host, MASK_SYSCTRL_REF_CLOCK_SEL, PHY_CLK_CTRL);

 ufs_sys_ctrl_set_bits(host, MASK_UFS_CLK_GATE_BYPASS,
       CLOCK_GATE_BYPASS);
 ufs_sys_ctrl_set_bits(host, MASK_UFS_SYSCRTL_BYPASS, UFS_SYSCTRL);


 ufs_sys_ctrl_set_bits(host, BIT_SYSCTRL_PSW_CLK_EN, PSW_CLK_CTRL);

 ufs_sys_ctrl_clr_bits(host, BIT_UFS_PSW_ISO_CTRL, PSW_POWER_CTRL);

 ufs_sys_ctrl_clr_bits(host, BIT_UFS_PHY_ISO_CTRL, PHY_ISO_EN);

 ufs_sys_ctrl_clr_bits(host, BIT_SYSCTRL_LP_ISOL_EN, HC_LP_CTRL);


 ufs_sys_ctrl_set_bits(host, BIT_SYSCTRL_LP_RESET_N, RESET_CTRL_EN);
 mdelay(1);

 ufs_sys_ctrl_writel(host, MASK_UFS_DEVICE_RESET | BIT_UFS_DEVICE_RESET,
  UFS_DEVICE_RESET_CTRL);

 msleep(20);







 ufs_sys_ctrl_writel(host, 0x03300330, UFS_DEVICE_RESET_CTRL);

 if (!IS_ERR(host->rst))
  reset_control_deassert(host->rst);
}
