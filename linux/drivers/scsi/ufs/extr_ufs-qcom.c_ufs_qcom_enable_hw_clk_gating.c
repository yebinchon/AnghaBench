
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int REG_UFS_CFG2 ;
 int REG_UFS_CFG2_CGC_EN_ALL ;
 int mb () ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static void ufs_qcom_enable_hw_clk_gating(struct ufs_hba *hba)
{
 ufshcd_writel(hba,
  ufshcd_readl(hba, REG_UFS_CFG2) | REG_UFS_CFG2_CGC_EN_ALL,
  REG_UFS_CFG2);


 mb();
}
