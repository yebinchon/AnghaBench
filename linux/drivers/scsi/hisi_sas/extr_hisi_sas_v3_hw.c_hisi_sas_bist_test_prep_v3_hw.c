
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int debugfs_bist_phy_no; } ;


 int CFG_ALOS_CHK_DISABLE_MSK ;
 int SERDES_CFG ;
 int hisi_sas_phy_enable (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int ) ;

__attribute__((used)) static void hisi_sas_bist_test_prep_v3_hw(struct hisi_hba *hisi_hba)
{
 u32 reg_val;
 int phy_id = hisi_hba->debugfs_bist_phy_no;


 hisi_sas_phy_enable(hisi_hba, phy_id, 0);


 reg_val = hisi_sas_phy_read32(hisi_hba, phy_id, SERDES_CFG);
 reg_val |= CFG_ALOS_CHK_DISABLE_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_id, SERDES_CFG, reg_val);
}
