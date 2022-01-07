
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int vops; } ;


 int ufshcd_vops_exit (struct ufs_hba*) ;
 int ufshcd_vops_setup_regulators (struct ufs_hba*,int) ;

__attribute__((used)) static void ufshcd_variant_hba_exit(struct ufs_hba *hba)
{
 if (!hba->vops)
  return;

 ufshcd_vops_setup_regulators(hba, 0);

 ufshcd_vops_exit(hba);
}
