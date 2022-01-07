
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg {int dummy; } ;
struct ufs_hba {int dev; } ;


 int UFS_VREG_LPM_LOAD_UA ;
 int ufshcd_config_vreg_load (int ,struct ufs_vreg*,int ) ;

__attribute__((used)) static inline int ufshcd_config_vreg_lpm(struct ufs_hba *hba,
      struct ufs_vreg *vreg)
{
 return ufshcd_config_vreg_load(hba->dev, vreg, UFS_VREG_LPM_LOAD_UA);
}
