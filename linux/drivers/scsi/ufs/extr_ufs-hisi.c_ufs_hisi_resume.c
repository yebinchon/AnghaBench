
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
 int udelay (int) ;
 int ufs_sys_ctrl_set_bits (struct ufs_hisi_host*,int ,int ) ;
 int ufs_sys_ctrl_writel (struct ufs_hisi_host*,int,int ) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static int ufs_hisi_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);

 if (!host->in_suspend)
  return 0;


 ufs_sys_ctrl_writel(host, 0x00100010, UFS_DEVICE_RESET_CTRL);
 udelay(10);
 ufs_sys_ctrl_set_bits(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);

 host->in_suspend = 0;
 return 0;
}
