
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int urgent_bkops_lvl; } ;


 int ufshcd_bkops_ctrl (struct ufs_hba*,int ) ;

__attribute__((used)) static int ufshcd_urgent_bkops(struct ufs_hba *hba)
{
 return ufshcd_bkops_ctrl(hba, hba->urgent_bkops_lvl);
}
