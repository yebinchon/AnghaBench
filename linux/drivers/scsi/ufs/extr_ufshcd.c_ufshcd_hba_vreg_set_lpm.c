
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 scalar_t__ ufshcd_is_link_off (struct ufs_hba*) ;
 int ufshcd_setup_hba_vreg (struct ufs_hba*,int) ;

__attribute__((used)) static void ufshcd_hba_vreg_set_lpm(struct ufs_hba *hba)
{
 if (ufshcd_is_link_off(hba))
  ufshcd_setup_hba_vreg(hba, 0);
}
