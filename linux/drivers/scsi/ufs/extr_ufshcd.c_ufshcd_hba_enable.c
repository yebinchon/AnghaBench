
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int quirks; int dev; } ;


 int POST_CHANGE ;
 int PRE_CHANGE ;
 int UFSHCD_UIC_MASK ;
 int UFSHCI_QUIRK_BROKEN_HCE ;
 int dev_err (int ,char*) ;
 int ufshcd_dme_enable (struct ufs_hba*) ;
 int ufshcd_dme_reset (struct ufs_hba*) ;
 int ufshcd_enable_intr (struct ufs_hba*,int ) ;
 int ufshcd_hba_execute_hce (struct ufs_hba*) ;
 int ufshcd_set_link_off (struct ufs_hba*) ;
 int ufshcd_vops_hce_enable_notify (struct ufs_hba*,int ) ;

__attribute__((used)) static int ufshcd_hba_enable(struct ufs_hba *hba)
{
 int ret;

 if (hba->quirks & UFSHCI_QUIRK_BROKEN_HCE) {
  ufshcd_set_link_off(hba);
  ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE);


  ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
  ret = ufshcd_dme_reset(hba);
  if (!ret) {
   ret = ufshcd_dme_enable(hba);
   if (!ret)
    ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);
   if (ret)
    dev_err(hba->dev,
     "Host controller enable failed with non-hce\n");
  }
 } else {
  ret = ufshcd_hba_execute_hce(hba);
 }

 return ret;
}
