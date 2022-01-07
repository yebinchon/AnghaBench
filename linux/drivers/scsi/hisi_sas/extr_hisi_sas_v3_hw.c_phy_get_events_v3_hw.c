
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sas_phy {int running_disparity_error_count; int invalid_dword_count; int phy_reset_problem_count; int loss_of_dword_sync_count; } ;
struct asd_sas_phy {struct sas_phy* phy; } ;
struct hisi_sas_phy {int lock; int code_violation_err_count; struct asd_sas_phy sas_phy; } ;
struct hisi_hba {struct hisi_sas_phy* phy; } ;


 int ERR_CNT_CODE_ERR ;
 int ERR_CNT_DISP_ERR ;
 int ERR_CNT_DWS_LOST ;
 int ERR_CNT_INVLD_DW ;
 int ERR_CNT_RESET_PROB ;
 scalar_t__ hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void phy_get_events_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct sas_phy *sphy = sas_phy->phy;
 unsigned long flags;
 u32 reg_value;

 spin_lock_irqsave(&phy->lock, flags);


 reg_value = hisi_sas_phy_read32(hisi_hba, phy_no, ERR_CNT_DWS_LOST);
 sphy->loss_of_dword_sync_count += reg_value;


 reg_value = hisi_sas_phy_read32(hisi_hba, phy_no, ERR_CNT_RESET_PROB);
 sphy->phy_reset_problem_count += reg_value;


 reg_value = hisi_sas_phy_read32(hisi_hba, phy_no, ERR_CNT_INVLD_DW);
 sphy->invalid_dword_count += reg_value;


 reg_value = hisi_sas_phy_read32(hisi_hba, phy_no, ERR_CNT_DISP_ERR);
 sphy->running_disparity_error_count += reg_value;


 reg_value = hisi_sas_phy_read32(hisi_hba, phy_no, ERR_CNT_CODE_ERR);
 phy->code_violation_err_count += reg_value;

 spin_unlock_irqrestore(&phy->lock, flags);
}
