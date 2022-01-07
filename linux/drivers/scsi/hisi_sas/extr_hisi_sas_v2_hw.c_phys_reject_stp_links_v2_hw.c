
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int reject_stp_links_msk; int n_phy; } ;


 int CON_CONTROL ;
 int CON_CONTROL_CFG_OPEN_ACC_STP_MSK ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static void phys_reject_stp_links_v2_hw(struct hisi_hba *hisi_hba)
{
 u32 cfg;
 int phy_no;

 hisi_hba->reject_stp_links_msk = (1 << hisi_hba->n_phy) - 1;
 for (phy_no = 0; phy_no < hisi_hba->n_phy; phy_no++) {
  cfg = hisi_sas_phy_read32(hisi_hba, phy_no, CON_CONTROL);
  if (!(cfg & CON_CONTROL_CFG_OPEN_ACC_STP_MSK))
   continue;

  cfg &= ~CON_CONTROL_CFG_OPEN_ACC_STP_MSK;
  hisi_sas_phy_write32(hisi_hba, phy_no, CON_CONTROL, cfg);
 }
}
