
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int caps; } ;


 int UFSHCD_CAP_AUTO_BKOPS_SUSPEND ;

__attribute__((used)) static inline bool ufshcd_can_autobkops_during_suspend(struct ufs_hba *hba)
{
 return hba->caps & UFSHCD_CAP_AUTO_BKOPS_SUSPEND;
}
