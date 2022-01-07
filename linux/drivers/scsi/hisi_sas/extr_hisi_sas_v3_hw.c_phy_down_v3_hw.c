
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_sas_phy {int timer; } ;
struct hisi_hba {struct device* dev; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int CHL_INT0 ;
 int CHL_INT0_NOT_RDY_MSK ;
 int CT3_MSK ;
 int IRQ_HANDLED ;
 int PHYCTRL_NOT_RDY_MSK ;
 int PHY_STATE ;
 int SL_CONTROL ;
 int SL_CTA_MSK ;
 int TXID_AUTO ;
 int del_timer (int *) ;
 int dev_info (struct device*,char*,int,int) ;
 int hisi_sas_phy_down (struct hisi_hba*,int,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;

__attribute__((used)) static irqreturn_t phy_down_v3_hw(int phy_no, struct hisi_hba *hisi_hba)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 u32 phy_state, sl_ctrl, txid_auto;
 struct device *dev = hisi_hba->dev;

 del_timer(&phy->timer);
 hisi_sas_phy_write32(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 1);

 phy_state = hisi_sas_read32(hisi_hba, PHY_STATE);
 dev_info(dev, "phydown: phy%d phy_state=0x%x\n", phy_no, phy_state);
 hisi_sas_phy_down(hisi_hba, phy_no, (phy_state & 1 << phy_no) ? 1 : 0);

 sl_ctrl = hisi_sas_phy_read32(hisi_hba, phy_no, SL_CONTROL);
 hisi_sas_phy_write32(hisi_hba, phy_no, SL_CONTROL,
      sl_ctrl&(~SL_CTA_MSK));

 txid_auto = hisi_sas_phy_read32(hisi_hba, phy_no, TXID_AUTO);
 hisi_sas_phy_write32(hisi_hba, phy_no, TXID_AUTO,
      txid_auto | CT3_MSK);

 hisi_sas_phy_write32(hisi_hba, phy_no, CHL_INT0, CHL_INT0_NOT_RDY_MSK);
 hisi_sas_phy_write32(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 0);

 return IRQ_HANDLED;
}
