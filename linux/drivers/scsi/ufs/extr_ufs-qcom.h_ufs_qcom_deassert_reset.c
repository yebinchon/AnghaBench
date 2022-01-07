
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int MASK_UFS_PHY_SOFT_RESET ;
 int OFFSET_UFS_PHY_SOFT_RESET ;
 int REG_UFS_CFG1 ;
 int mb () ;
 int ufshcd_rmwl (struct ufs_hba*,int ,int,int ) ;

__attribute__((used)) static inline void ufs_qcom_deassert_reset(struct ufs_hba *hba)
{
 ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET,
   0 << OFFSET_UFS_PHY_SOFT_RESET, REG_UFS_CFG1);





 mb();
}
