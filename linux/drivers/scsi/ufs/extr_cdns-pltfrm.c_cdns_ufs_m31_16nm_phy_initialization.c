
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int BIT (int) ;
 int CDNS_UFS_REG_PHY_XCFGD1 ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static int cdns_ufs_m31_16nm_phy_initialization(struct ufs_hba *hba)
{
 u32 data;


 data = ufshcd_readl(hba, CDNS_UFS_REG_PHY_XCFGD1);
 data |= BIT(24);
 ufshcd_writel(hba, data, CDNS_UFS_REG_PHY_XCFGD1);

 return 0;
}
