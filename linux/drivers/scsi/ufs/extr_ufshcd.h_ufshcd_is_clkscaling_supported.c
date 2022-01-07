
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int caps; } ;


 int UFSHCD_CAP_CLK_SCALING ;

__attribute__((used)) static inline int ufshcd_is_clkscaling_supported(struct ufs_hba *hba)
{
 return hba->caps & UFSHCD_CAP_CLK_SCALING;
}
