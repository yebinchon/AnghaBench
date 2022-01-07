
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int caps; } ;


 int UFSHCD_CAP_CLK_GATING ;

__attribute__((used)) static inline bool ufshcd_is_clkgating_allowed(struct ufs_hba *hba)
{
 return hba->caps & UFSHCD_CAP_CLK_GATING;
}
