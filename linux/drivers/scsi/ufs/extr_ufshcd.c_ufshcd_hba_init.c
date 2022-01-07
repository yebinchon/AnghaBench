
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int is_powered; } ;


 int ufshcd_init_clocks (struct ufs_hba*) ;
 int ufshcd_init_hba_vreg (struct ufs_hba*) ;
 int ufshcd_init_vreg (struct ufs_hba*) ;
 int ufshcd_setup_clocks (struct ufs_hba*,int) ;
 int ufshcd_setup_hba_vreg (struct ufs_hba*,int) ;
 int ufshcd_setup_vreg (struct ufs_hba*,int) ;
 int ufshcd_variant_hba_init (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_hba_init(struct ufs_hba *hba)
{
 int err;
 err = ufshcd_init_hba_vreg(hba);
 if (err)
  goto out;

 err = ufshcd_setup_hba_vreg(hba, 1);
 if (err)
  goto out;

 err = ufshcd_init_clocks(hba);
 if (err)
  goto out_disable_hba_vreg;

 err = ufshcd_setup_clocks(hba, 1);
 if (err)
  goto out_disable_hba_vreg;

 err = ufshcd_init_vreg(hba);
 if (err)
  goto out_disable_clks;

 err = ufshcd_setup_vreg(hba, 1);
 if (err)
  goto out_disable_clks;

 err = ufshcd_variant_hba_init(hba);
 if (err)
  goto out_disable_vreg;

 hba->is_powered = 1;
 goto out;

out_disable_vreg:
 ufshcd_setup_vreg(hba, 0);
out_disable_clks:
 ufshcd_setup_clocks(hba, 0);
out_disable_hba_vreg:
 ufshcd_setup_hba_vreg(hba, 0);
out:
 return err;
}
