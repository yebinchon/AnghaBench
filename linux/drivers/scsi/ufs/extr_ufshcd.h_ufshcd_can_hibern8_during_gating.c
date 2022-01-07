
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int caps; } ;


 int UFSHCD_CAP_HIBERN8_WITH_CLK_GATING ;

__attribute__((used)) static inline bool ufshcd_can_hibern8_during_gating(struct ufs_hba *hba)
{
 return hba->caps & UFSHCD_CAP_HIBERN8_WITH_CLK_GATING;
}
