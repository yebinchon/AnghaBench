
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct hisi_sas_phy {TYPE_1__ identify; } ;
struct hisi_hba {struct hisi_sas_phy* phy; } ;


 scalar_t__ SAS_END_DEVICE ;
 int TXID_AUTO ;
 int TX_HARDRST_MSK ;
 int hisi_sas_phy_enable (struct hisi_hba*,int,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void phy_hard_reset_v2_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 u32 txid_auto;

 hisi_sas_phy_enable(hisi_hba, phy_no, 0);
 if (phy->identify.device_type == SAS_END_DEVICE) {
  txid_auto = hisi_sas_phy_read32(hisi_hba, phy_no, TXID_AUTO);
  hisi_sas_phy_write32(hisi_hba, phy_no, TXID_AUTO,
     txid_auto | TX_HARDRST_MSK);
 }
 msleep(100);
 hisi_sas_phy_enable(hisi_hba, phy_no, 1);
}
