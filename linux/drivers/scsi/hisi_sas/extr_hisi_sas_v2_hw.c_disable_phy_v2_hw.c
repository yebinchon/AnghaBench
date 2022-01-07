
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int rst_work; int wq; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ AM_CTRL_GLOBAL ;
 scalar_t__ AXI_MASTER_CFG_BASE ;
 int PHY_CFG ;
 int PHY_CFG_ENA_MSK ;
 int PORT_DFX0 ;
 int TXID_AUTO ;
 int TXID_AUTO_CTB_MSK ;
 scalar_t__ allowed_disable_phy_v2_hw (struct hisi_hba*,int) ;
 int dev_warn (struct device*,char*,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int hisi_sas_read32 (struct hisi_hba*,scalar_t__) ;
 int hisi_sas_write32 (struct hisi_hba*,scalar_t__,int) ;
 scalar_t__ is_sata_phy_v2_hw (struct hisi_hba*,int) ;
 int queue_work (int ,int *) ;
 int tx_fifo_is_empty_v2_hw (struct hisi_hba*,int) ;

__attribute__((used)) static void disable_phy_v2_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 cfg, axi_val, dfx0_val, txid_auto;
 struct device *dev = hisi_hba->dev;


 axi_val = hisi_sas_read32(hisi_hba, AXI_MASTER_CFG_BASE +
    AM_CTRL_GLOBAL);
 axi_val |= 0x1;
 hisi_sas_write32(hisi_hba, AXI_MASTER_CFG_BASE +
  AM_CTRL_GLOBAL, axi_val);

 if (is_sata_phy_v2_hw(hisi_hba, phy_no)) {
  if (allowed_disable_phy_v2_hw(hisi_hba, phy_no))
   goto do_disable;


  queue_work(hisi_hba->wq, &hisi_hba->rst_work);
  return;
 }

 dfx0_val = hisi_sas_phy_read32(hisi_hba, phy_no, PORT_DFX0);
 dfx0_val = (dfx0_val & 0x1fc0) >> 6;
 if (dfx0_val != 0x4)
  goto do_disable;

 if (!tx_fifo_is_empty_v2_hw(hisi_hba, phy_no)) {
  dev_warn(dev, "phy%d, wait tx fifo need send break\n",
   phy_no);
  txid_auto = hisi_sas_phy_read32(hisi_hba, phy_no,
     TXID_AUTO);
  txid_auto |= TXID_AUTO_CTB_MSK;
  hisi_sas_phy_write32(hisi_hba, phy_no, TXID_AUTO,
     txid_auto);
 }

do_disable:
 cfg = hisi_sas_phy_read32(hisi_hba, phy_no, PHY_CFG);
 cfg &= ~PHY_CFG_ENA_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_no, PHY_CFG, cfg);


 axi_val &= ~0x1;
 hisi_sas_write32(hisi_hba, AXI_MASTER_CFG_BASE +
  AM_CTRL_GLOBAL, axi_val);
}
