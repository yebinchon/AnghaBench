
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int is_powered; scalar_t__ devfreq; } ;


 scalar_t__ ufshcd_is_clkscaling_supported (struct ufs_hba*) ;
 int ufshcd_setup_clocks (struct ufs_hba*,int) ;
 int ufshcd_setup_hba_vreg (struct ufs_hba*,int) ;
 int ufshcd_setup_vreg (struct ufs_hba*,int) ;
 int ufshcd_suspend_clkscaling (struct ufs_hba*) ;
 int ufshcd_variant_hba_exit (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_hba_exit(struct ufs_hba *hba)
{
 if (hba->is_powered) {
  ufshcd_variant_hba_exit(hba);
  ufshcd_setup_vreg(hba, 0);
  ufshcd_suspend_clkscaling(hba);
  if (ufshcd_is_clkscaling_supported(hba))
   if (hba->devfreq)
    ufshcd_suspend_clkscaling(hba);
  ufshcd_setup_clocks(hba, 0);
  ufshcd_setup_hba_vreg(hba, 0);
  hba->is_powered = 0;
 }
}
