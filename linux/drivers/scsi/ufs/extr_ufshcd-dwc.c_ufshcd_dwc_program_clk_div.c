
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int DWC_UFS_REG_HCLKDIV ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static void ufshcd_dwc_program_clk_div(struct ufs_hba *hba, u32 divider_val)
{
 ufshcd_writel(hba, divider_val, DWC_UFS_REG_HCLKDIV);
}
