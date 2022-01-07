
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg {int max_uA; } ;
struct ufs_hba {int dev; } ;


 int ufshcd_config_vreg_load (int ,struct ufs_vreg*,int ) ;

__attribute__((used)) static inline int ufshcd_config_vreg_hpm(struct ufs_hba *hba,
      struct ufs_vreg *vreg)
{
 if (!vreg)
  return 0;

 return ufshcd_config_vreg_load(hba->dev, vreg, vreg->max_uA);
}
