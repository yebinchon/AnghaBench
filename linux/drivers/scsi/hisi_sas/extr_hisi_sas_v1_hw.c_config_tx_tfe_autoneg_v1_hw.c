
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int PHY_CONFIG2 ;
 int PHY_CONFIG2_FORCE_TXDEEMPH_MSK ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int ) ;

__attribute__((used)) static void config_tx_tfe_autoneg_v1_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 cfg = hisi_sas_phy_read32(hisi_hba, phy_no, PHY_CONFIG2);

 cfg &= ~PHY_CONFIG2_FORCE_TXDEEMPH_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_no, PHY_CONFIG2, cfg);
}
