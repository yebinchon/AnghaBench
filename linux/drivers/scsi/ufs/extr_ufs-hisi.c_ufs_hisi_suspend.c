
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hisi_host {int in_suspend; } ;
struct ufs_hba {int dummy; } ;
typedef enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;


 int BIT_SYSCTRL_REF_CLOCK_EN ;
 int PHY_CLK_CTRL ;
 int UFS_DEVICE_RESET_CTRL ;
 int WARN_ON (int) ;
 int udelay (int) ;
 int ufs_sys_ctrl_clr_bits (struct ufs_hisi_host*,int ,int ) ;
 int ufs_sys_ctrl_writel (struct ufs_hisi_host*,int,int ) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_runtime_pm (int) ;

__attribute__((used)) static int ufs_hisi_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);

 if (ufshcd_is_runtime_pm(pm_op))
  return 0;

 if (host->in_suspend) {
  WARN_ON(1);
  return 0;
 }

 ufs_sys_ctrl_clr_bits(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
 udelay(10);

 ufs_sys_ctrl_writel(host, 0x00100000, UFS_DEVICE_RESET_CTRL);

 host->in_suspend = 1;

 return 0;
}
