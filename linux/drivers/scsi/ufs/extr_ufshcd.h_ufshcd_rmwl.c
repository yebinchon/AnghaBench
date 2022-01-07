
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int ufshcd_readl (struct ufs_hba*,int) ;
 int ufshcd_writel (struct ufs_hba*,int,int) ;

__attribute__((used)) static inline void ufshcd_rmwl(struct ufs_hba *hba, u32 mask, u32 val, u32 reg)
{
 u32 tmp;

 tmp = ufshcd_readl(hba, reg);
 tmp &= ~mask;
 tmp |= (val & mask);
 ufshcd_writel(hba, tmp, reg);
}
