
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int CHL_INT0 ;
 int CHL_INT0_NOT_RDY_MSK ;
 int CHL_INT0_PHY_RDY_MSK ;
 int CHL_INT0_SL_PHY_ENABLE_MSK ;
 int CHL_INT0_SL_RX_BCST_ACK_MSK ;
 int hisi_sas_phy_oob_ready (struct hisi_hba*,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static void handle_chl_int0_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 irq_value0 = hisi_sas_phy_read32(hisi_hba, phy_no, CHL_INT0);

 if (irq_value0 & CHL_INT0_PHY_RDY_MSK)
  hisi_sas_phy_oob_ready(hisi_hba, phy_no);

 hisi_sas_phy_write32(hisi_hba, phy_no, CHL_INT0,
        irq_value0 & (~CHL_INT0_SL_RX_BCST_ACK_MSK)
        & (~CHL_INT0_SL_PHY_ENABLE_MSK)
        & (~CHL_INT0_NOT_RDY_MSK));
}
