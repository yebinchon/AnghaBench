
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dev; struct pcie_port pp; } ;
struct tegra_pcie_dw {scalar_t__ pcie_cap_base; struct dw_pcie pci; } ;
typedef int irqreturn_t ;


 int APPL_CAR_RESET_OVRD ;
 int APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N ;
 int APPL_INTR_STATUS_L0 ;
 int APPL_INTR_STATUS_L0_CDM_REG_CHK_INT ;
 int APPL_INTR_STATUS_L0_INT_INT ;
 int APPL_INTR_STATUS_L0_LINK_STATE_INT ;
 int APPL_INTR_STATUS_L1_0_0 ;
 int APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED ;
 int APPL_INTR_STATUS_L1_18 ;
 int APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT ;
 int APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR ;
 int APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR ;
 int APPL_INTR_STATUS_L1_8_0 ;
 int APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS ;
 int APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS ;
 int IRQ_HANDLED ;
 int PCIE_PL_CHK_REG_CHK_REG_COMPARISON_ERROR ;
 int PCIE_PL_CHK_REG_CHK_REG_COMPLETE ;
 int PCIE_PL_CHK_REG_CHK_REG_LOGIC_ERROR ;
 int PCIE_PL_CHK_REG_CONTROL_STATUS ;
 int PCIE_PL_CHK_REG_ERR_ADDR ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;
 int PORT_LOGIC_GEN2_CTRL ;
 int PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int,int ) ;
 int apply_bad_link_workaround (struct pcie_port*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_readw_dbi (struct dw_pcie*,scalar_t__) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t tegra_pcie_rp_irq_handler(struct tegra_pcie_dw *pcie)
{
 struct dw_pcie *pci = &pcie->pci;
 struct pcie_port *pp = &pci->pp;
 u32 val, tmp;
 u16 val_w;

 val = appl_readl(pcie, APPL_INTR_STATUS_L0);
 if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
  val = appl_readl(pcie, APPL_INTR_STATUS_L1_0_0);
  if (val & APPL_INTR_STATUS_L1_0_0_LINK_REQ_RST_NOT_CHGED) {
   appl_writel(pcie, val, APPL_INTR_STATUS_L1_0_0);


   val = appl_readl(pcie, APPL_CAR_RESET_OVRD);
   val &= ~APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N;
   appl_writel(pcie, val, APPL_CAR_RESET_OVRD);
   udelay(1);
   val = appl_readl(pcie, APPL_CAR_RESET_OVRD);
   val |= APPL_CAR_RESET_OVRD_CYA_OVERRIDE_CORE_RST_N;
   appl_writel(pcie, val, APPL_CAR_RESET_OVRD);

   val = dw_pcie_readl_dbi(pci, PORT_LOGIC_GEN2_CTRL);
   val |= PORT_LOGIC_GEN2_CTRL_DIRECT_SPEED_CHANGE;
   dw_pcie_writel_dbi(pci, PORT_LOGIC_GEN2_CTRL, val);
  }
 }

 if (val & APPL_INTR_STATUS_L0_INT_INT) {
  val = appl_readl(pcie, APPL_INTR_STATUS_L1_8_0);
  if (val & APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS) {
   appl_writel(pcie,
        APPL_INTR_STATUS_L1_8_0_AUTO_BW_INT_STS,
        APPL_INTR_STATUS_L1_8_0);
   apply_bad_link_workaround(pp);
  }
  if (val & APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS) {
   appl_writel(pcie,
        APPL_INTR_STATUS_L1_8_0_BW_MGT_INT_STS,
        APPL_INTR_STATUS_L1_8_0);

   val_w = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
        PCI_EXP_LNKSTA);
   dev_dbg(pci->dev, "Link Speed : Gen-%u\n", val_w &
    PCI_EXP_LNKSTA_CLS);
  }
 }

 val = appl_readl(pcie, APPL_INTR_STATUS_L0);
 if (val & APPL_INTR_STATUS_L0_CDM_REG_CHK_INT) {
  val = appl_readl(pcie, APPL_INTR_STATUS_L1_18);
  tmp = dw_pcie_readl_dbi(pci, PCIE_PL_CHK_REG_CONTROL_STATUS);
  if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMPLT) {
   dev_info(pci->dev, "CDM check complete\n");
   tmp |= PCIE_PL_CHK_REG_CHK_REG_COMPLETE;
  }
  if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_CMP_ERR) {
   dev_err(pci->dev, "CDM comparison mismatch\n");
   tmp |= PCIE_PL_CHK_REG_CHK_REG_COMPARISON_ERROR;
  }
  if (val & APPL_INTR_STATUS_L1_18_CDM_REG_CHK_LOGIC_ERR) {
   dev_err(pci->dev, "CDM Logic error\n");
   tmp |= PCIE_PL_CHK_REG_CHK_REG_LOGIC_ERROR;
  }
  dw_pcie_writel_dbi(pci, PCIE_PL_CHK_REG_CONTROL_STATUS, tmp);
  tmp = dw_pcie_readl_dbi(pci, PCIE_PL_CHK_REG_ERR_ADDR);
  dev_err(pci->dev, "CDM Error Address Offset = 0x%08X\n", tmp);
 }

 return IRQ_HANDLED;
}
