
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev; } ;


 int EIO ;
 int POST_CHANGE ;
 int PRE_CHANGE ;
 int UFSHCD_UIC_MASK ;
 int dev_err (int ,char*) ;
 int ufshcd_enable_intr (struct ufs_hba*,int ) ;
 int ufshcd_hba_start (struct ufs_hba*) ;
 int ufshcd_hba_stop (struct ufs_hba*,int) ;
 scalar_t__ ufshcd_is_hba_active (struct ufs_hba*) ;
 int ufshcd_set_link_off (struct ufs_hba*) ;
 int ufshcd_vops_hce_enable_notify (struct ufs_hba*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
{
 int retry;

 if (!ufshcd_is_hba_active(hba))

  ufshcd_hba_stop(hba, 1);


 ufshcd_set_link_off(hba);

 ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE);


 ufshcd_hba_start(hba);
 usleep_range(1000, 1100);


 retry = 10;
 while (ufshcd_is_hba_active(hba)) {
  if (retry) {
   retry--;
  } else {
   dev_err(hba->dev,
    "Controller enable failed\n");
   return -EIO;
  }
  usleep_range(5000, 5100);
 }


 ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);

 ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);

 return 0;
}
