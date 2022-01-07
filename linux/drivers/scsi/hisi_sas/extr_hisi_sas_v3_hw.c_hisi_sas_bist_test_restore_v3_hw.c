
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int debugfs_bist_phy_no; } ;


 int CFG_ALOS_CHK_DISABLE_MSK ;
 int CFG_BIST_TEST_MSK ;
 int CFG_PROG_PHY_LINK_RATE_MSK ;
 int CFG_PROG_PHY_LINK_RATE_OFF ;
 int CFG_RX_BIST_EN_MSK ;
 int CFG_TX_BIST_EN_MSK ;
 int PROG_PHY_LINK_RATE ;
 int SAS_PHY_BIST_CTRL ;
 int SERDES_CFG ;
 int hisi_sas_phy_enable (struct hisi_hba*,int,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static void hisi_sas_bist_test_restore_v3_hw(struct hisi_hba *hisi_hba)
{
 u32 reg_val;
 int phy_id = hisi_hba->debugfs_bist_phy_no;


 reg_val = hisi_sas_phy_read32(hisi_hba, phy_id, SAS_PHY_BIST_CTRL);
 reg_val &= ~(CFG_RX_BIST_EN_MSK | CFG_TX_BIST_EN_MSK |
       CFG_BIST_TEST_MSK);
 hisi_sas_phy_write32(hisi_hba, phy_id, SAS_PHY_BIST_CTRL, reg_val);


 reg_val = hisi_sas_phy_read32(hisi_hba, phy_id, SERDES_CFG);
 reg_val &= ~CFG_ALOS_CHK_DISABLE_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_id, SERDES_CFG, reg_val);


 reg_val = hisi_sas_phy_read32(hisi_hba, phy_id, PROG_PHY_LINK_RATE);

 reg_val &= ~CFG_PROG_PHY_LINK_RATE_MSK;
 reg_val |= (0x8 << CFG_PROG_PHY_LINK_RATE_OFF);
 hisi_sas_phy_write32(hisi_hba, phy_id, PROG_PHY_LINK_RATE, reg_val);


 hisi_sas_phy_enable(hisi_hba, phy_id, 1);
}
