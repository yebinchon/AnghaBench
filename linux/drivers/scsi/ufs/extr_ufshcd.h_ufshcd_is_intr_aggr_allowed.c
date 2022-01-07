
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int caps; int quirks; } ;


 int UFSHCD_CAP_INTR_AGGR ;
 int UFSHCD_QUIRK_BROKEN_INTR_AGGR ;

__attribute__((used)) static inline bool ufshcd_is_intr_aggr_allowed(struct ufs_hba *hba)
{


 if ((hba->caps & UFSHCD_CAP_INTR_AGGR) &&
     !(hba->quirks & UFSHCD_QUIRK_BROKEN_INTR_AGGR))
  return 1;
 else
  return 0;



}
