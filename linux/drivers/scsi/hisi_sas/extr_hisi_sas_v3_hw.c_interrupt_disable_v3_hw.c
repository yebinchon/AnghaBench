
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hisi_hba {int queue_count; int n_phy; struct pci_dev* pci_dev; } ;


 int CHL_INT1_MSK ;
 int CHL_INT2_MSK ;
 scalar_t__ ENT_INT_SRC_MSK1 ;
 scalar_t__ ENT_INT_SRC_MSK2 ;
 scalar_t__ ENT_INT_SRC_MSK3 ;
 scalar_t__ OQ0_INT_SRC_MSK ;
 int PHYCTRL_NOT_RDY_MSK ;
 int PHYCTRL_PHY_ENA_MSK ;
 scalar_t__ SAS_ECC_INTR_MSK ;
 int SL_RX_BCAST_CHK_MSK ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int hisi_sas_write32 (struct hisi_hba*,scalar_t__,int) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void interrupt_disable_v3_hw(struct hisi_hba *hisi_hba)
{
 struct pci_dev *pdev = hisi_hba->pci_dev;
 int i;

 synchronize_irq(pci_irq_vector(pdev, 1));
 synchronize_irq(pci_irq_vector(pdev, 2));
 synchronize_irq(pci_irq_vector(pdev, 11));
 for (i = 0; i < hisi_hba->queue_count; i++) {
  hisi_sas_write32(hisi_hba, OQ0_INT_SRC_MSK + 0x4 * i, 0x1);
  synchronize_irq(pci_irq_vector(pdev, i + 16));
 }

 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK1, 0xffffffff);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK2, 0xffffffff);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK3, 0xffffffff);
 hisi_sas_write32(hisi_hba, SAS_ECC_INTR_MSK, 0xffffffff);

 for (i = 0; i < hisi_hba->n_phy; i++) {
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT1_MSK, 0xffffffff);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2_MSK, 0xffffffff);
  hisi_sas_phy_write32(hisi_hba, i, PHYCTRL_NOT_RDY_MSK, 0x1);
  hisi_sas_phy_write32(hisi_hba, i, PHYCTRL_PHY_ENA_MSK, 0x1);
  hisi_sas_phy_write32(hisi_hba, i, SL_RX_BCAST_CHK_MSK, 0x1);
 }
}
