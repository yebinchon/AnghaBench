
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int dummy; } ;


 int config_id_frame_v1_hw (struct hisi_hba*,int) ;
 int config_phy_opt_mode_v1_hw (struct hisi_hba*,int) ;
 int config_tx_tfe_autoneg_v1_hw (struct hisi_hba*,int) ;
 int enable_phy_v1_hw (struct hisi_hba*,int) ;

__attribute__((used)) static void start_phy_v1_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 config_id_frame_v1_hw(hisi_hba, phy_no);
 config_phy_opt_mode_v1_hw(hisi_hba, phy_no);
 config_tx_tfe_autoneg_v1_hw(hisi_hba, phy_no);
 enable_phy_v1_hw(hisi_hba, phy_no);
}
